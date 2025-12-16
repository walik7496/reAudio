@echo off
echo ===============================
echo   Force Restarting Windows Audio
echo ===============================

:: We are looking for the PID where the Windows Audio service is located
for /f "tokens=2" %%a in ('tasklist /svc ^| findstr /i "AudioSrv"') do (
    echo Killing svchost.exe with PID %%a ...
    taskkill /PID %%a /F
)

:: We are waiting for Windows to "release" the service
timeout /t 3 >nul

:: Running
net start AudioEndpointBuilder
net start audiosrv

echo ===============================
echo   Audio restarted successfully!
echo ===============================
pause
