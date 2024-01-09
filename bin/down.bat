certutil -urlcache -split -f "https://raw.githubusercontent.com/CasTzz/rdp/main/bin/getscreen.exe" getscreen.exe
pip install pyautogui --quiet
pip install psutil --quiet
curl -s -L -o time.py https://raw.githubusercontent.com/CasTzz/rdp/main/bin/time.py
curl -s -L -o login.py https://raw.githubusercontent.com/CasTzz/rdp/main/bin/login.py
curl -s -L -o C:\Users\Public\Desktop\install.bat https://raw.githubusercontent.com/CasTzz/rdp/main/bin/install.bat
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://raw.githubusercontent.com/CasTzz/rdp/main/bin/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/CasTzz/rdp/main/bin/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Winrar.exe /S
set password=060789
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"

start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=3)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

start getscreen.exe
python login.py

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "Sri Lanka Standard Time"
