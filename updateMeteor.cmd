@echo off

echo Proxy login:
set /p PROXY_DOMAIN="Enter Domain (e.g. de, na, ...): "
set /p PROXY_USER="Enter NT-USER: "
set /p PROXY_PASS="Enter Password: "

cls

echo setting Proxy

set HTTP_PROXY=http://%PROXY_USER%:%PROXY_PASS%@rb-proxy-%PROXY_DOMAIN%.bosch.com:8080/
set HTTPS_PROXY=http://%PROXY_USER%:%PROXY_PASS%@rb-proxy-%PROXY_DOMAIN%.bosch.com:8080/

call npm config set proxy %HTTP_PROXY%
call npm config set https-proxy %HTTPS_PROXY%
call npm config set registry http://registry.npmjs.org/
call npm config set strict-ssl false

cls

cd .\source

echo Updating Meteor...
call meteor update

echo Done!
PAUSE