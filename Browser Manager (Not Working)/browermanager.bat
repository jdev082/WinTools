@echo off
echo "BrowserManager is discontinued, please try out AppManager!"

:begin
echo "Which browser?"
echo "Chrome: 0"
echo "Firefox: 1"

set /p Browser="Enter number of browser: "

if %Browser%==0 (GOTO chrome)
if %Browser%==1 (GOTO firefox)

:chrome
curl -L https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BFE458DD1-2950-FBEB-B36E-5444832F8ED3%7D%26lang%3Den%26browser%3D3%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe -o install.exe
elevate.exe "install.exe"
GOTO end

:firefox
curl -L https://download-installer.cdn.mozilla.net/pub/firefox/releases/93.0/win32/en-US/Firefox%20Installer.exe -o ff-install.exe
elevate.exe ff-install.exe
GOTO end

:end
exit

