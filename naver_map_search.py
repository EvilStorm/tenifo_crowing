import time

from chrome_driver import ChromeDriver
from selenium_funtion import SeleniumFuntions
from selenium.webdriver.common.action_chains import ActionChains

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
import json
import os

from selenium.common.exceptions import NoAlertPresentException
from selenium.webdriver.common.alert import Alert
from selenium.common.exceptions import (
    NoSuchElementException,
    UnexpectedAlertPresentException
)
from chrome_driver import ChromeDriver
import requests

class NaverMapSearch:
    _driver = None
    _funtions = None

    MAX_HORIZONTAL = 24
    MAX_VERTICAL = 40

    _horizontal = 0
    _vertical = 0

    _isFirstLoop = True

    _startUrl = [
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1731030848?c=12.27,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1332963637?c=12.27,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/33152823?c=11.84,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1163898797?c=12.30,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1187859917?c=12.36,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1982117864?c=11.93,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1789739936?c=11.07,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/15615840?c=12.26,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/15615840?c=13.08,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/15154147?c=12.00,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/2077566410?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/19043736?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/18670701?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1313808947?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1005637287?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1798379557?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1802754117?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1810500438?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/18180121?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5?c=12.50,0,0,0,dh',

        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1508544604?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/18942314?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/19061057?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1029625661?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1992556071?c=12.50,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1650791273?c=11.38,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1958022700?c=10.62,0,0,0,dh',

        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1062996501?c=11.18,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1906695932?c=11.18,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/19070067?c=10.62,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1577257894?c=9.80,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1904067558?c=9.80,0,0,0,dh',

        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5?c=10.56,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1776206622?c=10.56,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/15877896?c=9.76,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/15904318?c=9.76,0,0,0,dh',

        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/17755358?c=10.30,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1147511701?c=10.30,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/15873194?c=10.30,0,0,0,dh',

        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/17650844?c=9.58,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1035089782?c=9.58,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1789957171?c=9.58,0,0,0,dh',

        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1055888490?c=9.11,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/16142652?c=10.07,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1037417476?c=10.34,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1771219989?c=11.78,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/1774011802?c=11.78,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/17115102?c=11.78,0,0,0,dh',
        'https://map.naver.com/p/search/%ED%85%8C%EB%8B%88%EC%8A%A4%EC%9E%A5/place/16539029?c=11.18,0,0,0,dh'
        ]
    def __init__(self):
        chrome = ChromeDriver()
        self._driver = chrome.getDriver()
        self._funtions = SeleniumFuntions(self._driver)
    
    def run(self):
        try:

            self._driver.get("https://map.naver.com/p?c=13.00,0,0,0,dh")
            time.sleep(3)

            self._map_element = WebDriverWait(self._driver, 10).until(
                EC.visibility_of_element_located((By.XPATH, '//*[@id="app-layout"]/div[2]/div[2]/div/div[1]/div/div[2]/canvas'))
            )

            map_zoom = self._driver.find_element(By.XPATH, '//*[@id="app-layout"]/div[2]/div[1]/div[3]/div[2]/div/div[1]/div/div/input')  
            self._driver.execute_script("arguments[0].value = '50';", map_zoom)

            input_search_element = self._driver.find_element(By.XPATH, '/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div/div/div/input') 
            input_search_element.send_keys('테니스장')

            window_size = self._driver.get_window_size()
            viewport_width = window_size['width'] - (63+360)
            print(f'size: {viewport_width}')
            safe_offset = int(viewport_width * 0.7)

            self.moveFirstPosition()
            self.doProcessing()

            self._processing = True
            while self._processing:
                self.moveNextMap()
                time.sleep(2)
                self.doProcessing()
            

            time.sleep(10000)
            

        except Exception as e:
            print(e)


    def moveFirstPosition(self):
        for i in range(7):
            self.moveMap(640, 510)
        for i in range(3):
            self.moveMap(0, 100)

    def doProcessingTest(self):
        #테니스 검색            
        input_search_element = self._driver.find_element(By.XPATH, '/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div/div/div/input') 
        input_search_element.send_keys(Keys.ENTER)


    def moveMap(self, horizontal, vertical):
        self._driver.switch_to.default_content()
        self._map_element = self._driver.find_element(By.XPATH, '//*[@id="app-layout"]/div[2]/div[2]/div/div[1]/div/div[2]/canvas') 

        ActionChains(self._driver)\
            .move_to_element(self._map_element)\
            .click_and_hold()\
            .move_by_offset(horizontal, vertical)\
            .pause(0.1)\
            .release()\
            .perform()


    
    def moveNextMap(self):
        if(self.MAX_HORIZONTAL == self._horizontal and self.MAX_VERTICAL == self._vertical):
            print('Map Search Done')
            self._processing = False
            return
        
        
        if(self._horizontal == 0 and not self._isFirstLoop):
            #아래로 한칸 내려감 
            self.moveMap(0, -550)
            self._vertical = self._vertical +1
        else :
            _isFirstLoop = False
            if self._vertical % 2 == 0:
                print(' Move - ')
                #move Right
                self.moveMap(-850, 0)
                self._horizontal = self._horizontal +1
            else :
                #move Left 
                self.moveMap(850, 0)
                print(' Move + ')
                self._horizontal = self._horizontal -1

        print(f'Map Search Calc:{self._vertical % 2} Horizontal: {self._horizontal}, Vertical: {self._vertical} ')

    def doProcessing(self):
        #테니스 검색            
        input_search_element = self._driver.find_element(By.XPATH, '/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div/div/div/input') 
        input_search_element.send_keys(Keys.ENTER)

        time.sleep(3)
        
        self.collectEnableReservationCortCurrentMap()

    def collectEnableReservationCortCurrentMap(self):
        
        data = self.findEnableCourt()
        self.writeFile(data)

        self._funtions.moveInIFrame('//*[@id="searchIframe"]')

        has_page = self.hasNextPage()
        print(f'has_page: {has_page}')

        if has_page:
            self.moveNext()
            time.sleep(5)
            self.collectEnableReservationCortCurrentMap()

    def writeFile(self, addedDataList):
        fileName = 'cort_urls.json'

        if os.path.exists(fileName):
            with open (fileName, 'r', encoding='utf-8') as f:
                try:
                    data = json.load(f)
                    print('data')
                except json.JSONDecodeError:
                    print('error')
                    data = []
        else :
            data = []

        existing_urls = {entry['url'] for entry in data if 'url' in entry}

        # 3. 중복되지 않은 데이터만 추가
        new_data = [entry for entry in addedDataList if entry.get('url') not in existing_urls]

        data.extend(new_data)

        with open(fileName, "w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=4)

    def hasNextPage(self):
        navigatior = self._driver.find_element(By.XPATH, '/html/body/div[3]/div/div[2]/div[2]')
        navigator_buttons = navigatior.find_elements(By.TAG_NAME, 'a')
        next_button = navigator_buttons[-1]

        isEnable = next_button.get_attribute('aria-disabled') == 'false'
        return isEnable

    def moveNext(self):
        
        navigatior = self._driver.find_element(By.XPATH, '/html/body/div[3]/div/div[2]/div[2]')
        navigator_buttons = navigatior.find_elements(By.TAG_NAME, 'a')
        next_button = navigator_buttons[-1]
        has_next = next_button.get_attribute('aria-disabled') == 'false'
        print(f'hasNext: {has_next}')

        if has_next:
            next_button.click()


    def findEnableCourt(self):
        self._funtions.moveInIFrame('//*[@id="searchIframe"]')
        time.sleep(0.4)

        result = []
        loop = True
        index = 0

        while loop:
            try:
                items = self._driver.find_elements(By.CSS_SELECTOR, '#_pcmap_list_scroll_container > ul > li') 
                item = items[index]
                
                self._driver.execute_script("arguments[0].scrollIntoView();", item)

                link = item.find_element(By.CLASS_NAME, 'place_bluelink') 
                link.click()
                
                time.sleep(4)
                self._driver.switch_to.default_content()
                self._funtions.moveInIFrame('//*[@id="entryIframe"]')
                
                place = self._driver.find_element(By.XPATH, '//*[@id="_title"]/div/span[1]')
                print(f'Place: {place.text}')
                can_reservation = self._funtions.hasElement('/html/body/div[3]/div/div/div/div[2]/div[4]/div/span[1]')
                if can_reservation:
                    print(f'예약 가능')
                else :
                    print(f'예약 불가가능')
                
                result.append(
                    {
                        'place': place.text,
                        'reservation': can_reservation,
                        'url': self._driver.current_url,
                    }
                )

                self._driver.switch_to.default_content()
                self._funtions.moveInIFrame('//*[@id="searchIframe"]')

            except Exception as e:
                print(e)
            print(f'list Total Cout:{len(items)}, current index: {index}')
            if len(items)-1 == index:
                loop = False
                break
            else :
                index = index+1
        
        return result
            
        
    def test(self):
        self.writeFile([
            {
                'place': '샘플32',
                'reservation': False,
                'url': 'https://map.naver.com/p?c=13.00,0,0,0,dh32',
            }
        ])



if __name__ == '__main__':
    search = NaverMapSearch()
    try :
        search.run()
    except Exception as e:
        print(e)
    
