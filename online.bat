@echo off
cd %~dp0
for /l %%n in (1,1,9) do (
  echo select disk %%n > cmd
  echo online disk >> cmd
  diskpart /s cmd
)
del cmd