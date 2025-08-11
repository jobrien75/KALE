@echo off

echo This skript will restore from the File KALEmongoDB.archive
echo Make sure this file is valid and in current directory

pause

call "C:\Program Files\MongoDB\Server\4.0\bin\mongorestore.exe" --db KALE --archive=KALEmongoDB.archive

pause