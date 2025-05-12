import time

from chrome_driver import ChromeDriver
from selenium_funtion import SeleniumFuntions


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
    NoSuchElementException,
    UnexpectedAlertPresentException
)
from chrome_driver import ChromeDriver

class ReservationNaver:
    _driver = None
    _funtions = None

    def __init__(self):
        chrome = ChromeDriver()
        self._driver = chrome.getDriver()
        self._funtions = SeleniumFuntions(self._driver)
    
    def run(self):
        try:
            self._driver.get("https://map.naver.com/p/entry/place/1838346489?c=15.00,0,0,0,dh")
            
            self._funtions.moveInIFrame('//*[@id="entryIframe"]')
            time.sleep(4)

            placeInfo = self.getPlaceInfo()
            #예약 가능한 상태라면 클릭 
            button = WebDriverWait(self._driver, 10).until(
                EC.element_to_be_clickable((By.XPATH, '//*[@id="app-root"]/div/div/div/div[4]/div/div/div/div/a[3]'))
            )
            button.click()
            time.sleep(2)
            
            cortReservationInfos = self.iteratorCort()

            placeInfo["cortReservationInfos"] = cortReservationInfos

            print(placeInfo)
        except Exception as e:
            print(e)

    def getPlaceInfo(self):
        place = self._driver.find_element(By.XPATH, '//*[@id="_title"]/div/span[1]')
        address = self._driver.find_element(By.XPATH, '//*[@id="app-root"]/div/div/div/div[5]/div/div[2]/div[1]/div/div[1]/div/a/span[1]')
        return {"name": place.text, "address":address.text}

    def iteratorCort(self):
        try:
            li_elements = self._driver.find_elements(By.CSS_SELECTOR, '.place_section_content li')
            reservationInfos = []
            for idx, li in enumerate(li_elements):
                li_elements = self._driver.find_elements(By.CSS_SELECTOR, '.place_section_content li')
                print(f"{idx}. 항목 내용:", li_elements[idx].text)
                li_elements[idx].find_element(By.TAG_NAME, "a").click()
                time.sleep(2)

                info = self.getReservationInfo()
                timeInfo = self.getReservationTimeInfo()

                info['timeInfo'] = timeInfo
                reservationInfos.append(info)

                # print(info)

                # 페이지 이동했다면 뒤로 가기
                backButton = self._driver.find_element(By.XPATH, '//*[@id="root"]/header/a[1]')
                backButton.click()

                time.sleep(1)
            return reservationInfos  
        except Exception as e:
            print(e)


    def getReservationInfo(self):
        date = self._driver.find_element(By.XPATH, '//*[@id="root"]/main/section[2]/div/div[2]/div[1]/div/div').text
        dateParse = date.split('.')
        
        title = self._driver.find_element(By.XPATH, '//*[@id="root"]/main/section[1]/div/div[2]/h3/div').text
        cortType = self._driver.find_element(By.XPATH, '//*[@id="root"]/main/section[1]/div/div[2]/ul/li/div').text

        self.calendarMovePrev = self._driver.find_element(By.XPATH, '//*[@id="root"]/main/section[2]/div/div[2]/div[1]/div/div/button[1]')
        self.calendarMoveNext = self._driver.find_element(By.XPATH, '//*[@id="root"]/main/section[2]/div/div[2]/div[1]/div/div/button[2]')

        print(f'Year: {dateParse[0]}, Month: {dateParse[1]},Title: {title}, type: {cortType}')
        return {
            "cort": title,
            "cortType": cortType,
            "year": dateParse[0],
            "month": dateParse[1],
        }


    def getReservationTimeInfo(self):
        tbody = self._driver.find_element(By.XPATH, '//*[@id="root"]/main/section[2]/div/div[2]/div[1]/div/table/tbody')
        rows = tbody.find_elements(By.TAG_NAME, "tr")

        self.startDayForThisMonth = False
        result = []
        

        #달력의 날짜를 모두 검색한다. 
        for row_idx, row in enumerate(rows, start=1):
            tds = row.find_elements(By.TAG_NAME, "td")
            #날짜 하나씩 돌아가며 예약이 가능한 상태인지 확인한다.
            for col_idx, td in enumerate(tds, start=1):
                button = td.find_element(By.TAG_NAME, 'button')
                isEnable = not button.get_attribute("disabled") is not None
                day = td.find_element(By.CLASS_NAME, 'num').text

                if(int(day) == 1):
                    self.startDayForThisMonth = True

                # 예약 가능한 상태이고, 이번달에 해당되는 날이면 시간을 검색한다.
                # 이번달 해당되는 날을 검색하는 이유는 28, 1,2,3, ...28, 29 이렇게 중복되는 날짜가 나올수도 있고 안나올 수도 있어
                # 이전 달의 날짜는 달력을 넘어가며 검색하기 때문에 필요가 없다. 
                if (isEnable and self.startDayForThisMonth):
                    
                    button.click()
                    time.sleep(0.2)

                    #예약을 표현하는 엘리먼트를 가져온다.
                    schedule = self._driver.find_elements(By.CSS_SELECTOR, '.time_list li')

                    enableTimes = []
                    enableReservationInfos = {}

                    isAm = True
                    for idx, li in enumerate(schedule):
                        canReservationTime = not "disabled" in li.get_attribute("class").split()

                        try:
                            ampmElement = li.find_element(By.CLASS_NAME, 'ampm')
                            isAm = "오전" in ampmElement.text
                        except NoSuchElementException:
                            pass

                        if(canReservationTime):
                            enalbeTime = li.find_element(By.CLASS_NAME, 'time_text').text

                            lines = enalbeTime.splitlines()
                            if len(lines) > 1:
                                time_only = lines[1]  # "10시"
                            else:
                                time_only = enalbeTime.replace("오전", "").replace("오후", "").strip()


                            enalbeTime = int(time_only.replace("시", ""))
                            if isAm:
                                #0시가 12시로 표현되어 있음.
                                if enalbeTime == 12:
                                    enalbeTime = 0
                            elif not isAm:
                                if enalbeTime != 12:
                                    enalbeTime = enalbeTime+12
                            enableTimes.append(enalbeTime)

                    if(len(enableTimes) > 0):
                        enableReservationInfos = {
                            "day": day,
                            "times": enableTimes
                        }
                    result.append(enableReservationInfos)
        
        # print(f'Result: {result}')
        return result
                    

if __name__ == '__main__':
    reservation = ReservationNaver()
    try :
        reservation.run()
    except Exception as e:
        print(e)
    
