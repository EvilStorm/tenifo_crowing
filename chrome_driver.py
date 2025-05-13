from selenium import webdriver
from selenium.webdriver.chrome.service import Service

class ChromeDriver:
    
    # 정확한 chromedriver 경로 지정
    _CHROMEDRIVER_PATH = '/opt/homebrew/bin/chromedriver'
    _SHOW_BROWSER = True

    _driver = None

    def __init__(self):

        options = webdriver.ChromeOptions()

        user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        options.add_argument(f"user-agent={user_agent}")

        if(not self._SHOW_BROWSER):
            options.add_argument('--headless')  # 브라우저 안 보이게 실행할 경우
        
        options.add_argument('--no-sandbox')
        # options.add_argument('--disable-dev-shm-usage')
        # options.add_argument('--disable-blink-features=AutomationControlled')
        # options.add_argument('--disable-popup-blocking')
        # options.add_argument('--disable-extensions')

        # prefs = {"profile.managed_default_content_settings.images": 2}
        # options.add_experimental_option("prefs", prefs)

        self._driver = webdriver.Chrome(service=Service(self._CHROMEDRIVER_PATH), options=options)
        self._driver.set_window_size(1780, 1320)

    def getDriver(self):
        return self._driver

