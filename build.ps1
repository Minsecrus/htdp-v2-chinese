Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "正在使用 XeLaTeX 编译《程序设计方法》..." -ForegroundColor Cyan
Write-Host "===================================================" -ForegroundColor Cyan

Set-Location $PSScriptRoot

Write-Host "--> 第一遍编译 (生成目录与标签)..." -ForegroundColor Yellow
xelatex -interaction=nonstopmode -jobname=程序设计方法 main.tex | Out-Null

Write-Host "--> 第二遍编译 (解析引用标签)..." -ForegroundColor Yellow
xelatex -interaction=nonstopmode -jobname=程序设计方法 main.tex | Out-Null

if (Test-Path "程序设计方法.pdf") {
    Write-Host "`n[OK] 编译成功！输出文件: 程序设计方法.pdf" -ForegroundColor Green
} else {
    Write-Host "`n[ERROR] 编译失败，请查看 程序设计方法.log" -ForegroundColor Red
}
