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


class SeleniumFuntions:

    _driver: ChromeDriver = None
    def __init__(self, driver: ChromeDriver):
        self._driver = driver
    
    def waitAcceptPopup(self, sec=3):
        try:
            WebDriverWait(self._driver, sec).until(EC.alert_is_present())
            alert = self._driver.switch_to.alert
            print("⚠️ Alert 감지됨:", alert.text)
            alert.accept()
            return True
        except (NoAlertPresentException, TimeoutException):
            print("⚠️ Alert 감지 안됨 !!!")
            return False

    def waitClick(self, waitTarget: str, sec=10):
        try:
            # 2. 내부 버튼 클릭
            button = WebDriverWait(self._driver, sec).until(
                EC.element_to_be_clickable((By.XPATH, waitTarget))
            )
            print(f' TARGET: {waitTarget}')
            button.click()
        except TimeoutException:
            print("Click Target이 화면에 없음")
            return
        
    def moveInIFrame(self, waitTarget: str, sec=10):
        try:
            # 2. 내부 버튼 클릭
            iframe = WebDriverWait(self._driver, sec).until(
                EC.presence_of_element_located((By.XPATH, waitTarget))
            )
            self._driver.switch_to.frame(iframe)
        except TimeoutException:
            print("IFrame이 없음.")
            return
        
    def moveOutIFrame(self):
        self._driver.switch_to.default_content()
        

    def hasElement(self, waitTarget: str):
        try:
            elements = self._driver.find_elements(By.XPATH, waitTarget)
            print(f" 소스: {self._driver.title}")
            return len(elements) > 0
        except Exception as e:
            print(e)
            return False
