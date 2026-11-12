@echo off
echo ===================================================
echo 正在编译《程序设计方法 (HtDP 2e)》双栏排版工程...
echo ===================================================

cd /d "%~dp0"
xelatex -interaction=nonstopmode -jobname=程序设计方法 main.tex
xelatex -interaction=nonstopmode -jobname=程序设计方法 main.tex

if exist "程序设计方法.pdf" (
    echo.
    echo ===================================================
    echo 编译成功！输出文件: 程序设计方法.pdf
    echo ===================================================
) else (
    echo.
    echo 编译出现问题，请查看 程序设计方法.log
)
pause
