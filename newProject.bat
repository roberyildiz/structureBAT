@echo off
cd /d "%USERPROFILE%\OneDrive\Desktop"

set /p folderName="Please enter the name of the folder you want to create: "

if not exist "%folderName%" (
    mkdir "%folderName%"
    echo Folder successfully created: %folderName%
) else (
    echo Error: A folder with the specified name already exists.
    exit /b
)

cd "%folderName%"

mkdir "css"
echo CSS folder created.

mkdir "js"
echo JS folder created.

(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>Document^</title^>
echo     ^<link rel="stylesheet" href="/css/style.css"^>
echo ^</head^>
echo ^<body^>
echo     ^<h1^>Hello World^</h1^>
echo     ^<script src="/js/main.js"^>^</script^>
echo ^</body^>
echo ^</html^>
) > "index.html"
echo index.html file created.

echo *{^
    margin: 0;^
    padding: 0;^
    box-sizing: border-box;^
}^
body{^
    background-color: #282626;^
    color: antiquewhite;^
} > "css\style.css"
echo style.css file created.

echo console.log("hello world") > "js\main.js"
echo main.js file created.

code .
