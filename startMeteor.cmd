
@echo off

echo Proxy login:
set /p PROXY_DOMAIN="Enter Domain (e.g. de, na, ...): "
set /p PROXY_USER="Enter NT-USER: "
set /p PROXY_PASS="Enter Password: "

cls

echo setup CMD proxy...

set HTTP_PROXY=http://%PROXY_USER%:%PROXY_PASS%@rb-proxy-%PROXY_DOMAIN%.bosch.com:8080/
set HTTPS_PROXY=http://%PROXY_USER%:%PROXY_PASS%@rb-proxy-%PROXY_DOMAIN%.bosch.com:8080/

cd source

cls

meteor

