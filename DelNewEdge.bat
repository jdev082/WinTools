@echo off
del "C:\Program Files (x86)\Edge"
del "C:\Program Files (x86)\EdgeCore"
del "C:\Program Files (x86)\EdgeUpdate"
goto attemptdelwebview

:attemptdelwebview
taskkill /f /im edgewebview2.exe
taskkill /f /im edgewebview2.exe
taskkill /f /im edgewebview2.exe
del "C:\Program Files (x86)\EdgeWebView"
goto end

:end
echo "Hope edge got fully removed, type msedge into search and see if it worked. Edge web view might not of left though."
pause
exit