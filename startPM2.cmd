@echo off
echo Have you started the script as Administrator???
pause
cls

call pm2 start C:\Server\KALE\ecosystem.config.js
call pm2 save

pause