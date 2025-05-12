from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

from selenium.common.exceptions import NoAlertPresentException
from selenium.webdriver.common.alert import Alert
from selenium.common.exceptions import (
    TimeoutException,
    UnexpectedAlertPresentException
)
from chrome_driver import ChromeDriver


# 정확한 chromedriver 경로 지정
CHROMEDRIVER_PATH = '/opt/homebrew/bin/chromedriver'

# Chrome 옵션 설정
options = webdriver.ChromeOptions()
user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
options.add_argument(f"user-agent={user_agent}")


# options.add_argument('--headless')  # 브라우저 안 보이게 실행할 경우
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')
options.add_argument('--disable-blink-features=AutomationControlled')
options.add_argument('--disable-popup-blocking')
options.add_argument('--disable-extensions')

# WebDriver 실행
driver = webdriver.Chrome(service=Service(CHROMEDRIVER_PATH), options=options)


def waitAcceptPopup(sec=3):

    try:
        WebDriverWait(driver, sec).until(EC.alert_is_present())
        alert = driver.switch_to.alert
        print("⚠️ Alert 감지됨:", alert.text)
        alert.accept()
        return True
    except (NoAlertPresentException, TimeoutException):
        print("⚠️ Alert 감지 안됨 !!!")
        return False

def waitClick(waitTarget, sec=10):
    try:
            # 2. 내부 버튼 클릭
            button = WebDriverWait(driver, sec).until(
                EC.element_to_be_clickable((By.XPATH, waitTarget))
            )
            button.click()
    except TimeoutException:
        print("Click Target이 화면에 없음")
        return

def checkLoginPage():
    current_url = driver.current_url
    return "loginForm" in current_url

def signIn():
    user_id = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.XPATH, '//*[@id="userid"]'))
    )
    user_id.send_keys("evilstorm")

    # 비밀번호 입력
    user_pwd = driver.find_element(By.XPATH, '//*[@id="userpwd"]')
    user_pwd.send_keys("wkfgoqhwk1!")

    # 로그인 버튼 클릭
    login_btn = driver.find_element(By.XPATH, '//*[@id="addUserForm"]/div[1]/button')
    login_btn.click()

def searchCort():

    driver.get("https://yeyak.seoul.go.kr/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T108")

    element = WebDriverWait(driver, 10).until(
        EC.element_to_be_clickable((By.XPATH, '//*[@id="contents"]/div[4]/ul/li[5]'))
    )
    element.click()

    

try:
    # driver.execute_cdp_cmd("Network.enable", {})
    # driver.execute_cdp_cmd("Network.setBlockedURLs", {
    #     "urls": ["*dynaPath.jsp*"]
    # })
    
    searchCort()

    #얼럿 팝업 '응답 메시지 분석에 실패 하였습니다.' 발생으로 대기 후 삭제 
    waitAcceptPopup()
    #공지사항 팝업 대기 및 삭제 
    # waitClick('//*[@id="contents"]/div[2]/div/div[2]/button')
    #예약하기 버튼 클릭 
    # waitClick('//*[@id="aform"]/div[1]/div[2]/div/div/a[1]')
    
    #얼럿 팝업 로그인이 되어 있지 않는 경우 '로그인 하셔야 합니다.' 발생으로 대기 후 삭제 
    # needSignIn = waitAcceptPopup()
    # #팝업 클릭 후 로그인이 필요한 경우 로그인 페이지로 리다이랙션 됨.
    # if(needSignIn):
    #     signIn()
    #     waitAcceptPopup()
    #     #공지사항 팝업 대기 및 삭제 
    #     waitClick('//*[@id="contents"]/div[2]/div/div[2]/button')
    #     #예약하기 버튼 클릭 
    #     waitClick('//*[@id="aform"]/div[1]/div[2]/div/div/a[1]')

    # waitAcceptPopup()

    # # 로그인 후 특정 요소 기다리기 (예: 메뉴 존재 여부로 성공 판단)
    WebDriverWait(driver, 100).until(
        EC.presence_of_element_located((By.CSS_SELECTOR, ".gnb_login_area"))
    )

    # print("✅ 로그인 성공")
except UnexpectedAlertPresentException:
    print("팝업?")
    waitAcceptPopup()
except Exception as e:
    print("❌ 로그인 실패:", e)

# finally:
#     driver.quit()
