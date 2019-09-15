@echo off
title Starting Up Your Defaults
echo Opening your defaults

:: Startup Websites
start "" https://mail.google.com/mail/u/1/
start "" https://stackoverflow.com/
start "" https://news.google.com/u/1/
start "" https://www.bing.com/news/search?q=Top+stories

:: Startup Programs
start /max "" spotify.exe " "
start /min "" "C:\Program Files (x86)\Hotspot Shield\bin\hsscp.exe"
start /max "" "C:\Users\whoami\AppData\Local\Programs\Microsoft VS Code\Code.exe"
