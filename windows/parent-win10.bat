@echo off
title �إߧַ���
set VHDOS=
set /p VHDOS=�п�JiSCSI�Ϻо��N��:
if not exist %VHDOS%:\vhdos\win10x64.vhdx echo �䤣�� %VHDOS%:\vhdos\win10x64.vhdx �D�ɡA�L�k����C & pause & goto theend
echo create vdisk file=%VHDOS%:\vhdos\win10x64_st.vhdx parent=%VHDOS%:\vhdos\win10x64.vhdx > %TEMP%\createparent.txt
echo create vdisk file=%VHDOS%:\vhdos\win10x64_rcst.vhdx parent=%VHDOS%:\vhdos\win10x64.vhdx >> %TEMP%\createparent.txt
diskpart /s %TEMP%\createparent.txt
:theend