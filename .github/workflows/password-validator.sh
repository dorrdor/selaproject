#!/bin/ps1
#Date: 10/7/22
#Athor: Dor Ross
$counter = 0
$password=$args[0]


if ($password -like "*-f*") {
    $password=$password.Replace("-f ","")
    $password=$password.Replace("""","")
    $password = Get-Content -Path $password
}

if ($password.Length -le 10) 
{ Write-Host "you need at least 10 characters."  -ForegroundColor red 
  $counter = 1 }


if ($password -match '\d')
{}
else
{ Write-Host "You need to use numbers"  -ForegroundColor red 
  $counter = 1} 

if ($password -cmatch "[a-z]")
{}
else 
{ Write-Host "You need to use lowecase letters"  -ForegroundColor red 
  $counter = 1 }

if ($password -cmatch "[A-Z]")
{}
else 
{ Write-Host "You need to use uppercase letters"  -ForegroundColor red     
  $counter = 1 }

if ($counter -eq 1) 
{ Write-Host "exit code 1"  -ForegroundColor red }
else 
{ Write-Host "exit code 0"  -ForegroundColor green }

