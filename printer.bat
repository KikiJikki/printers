@echo off
:: �������� ������ 
if EXIST c:\ProgramData\printver1.txt GOTO end 
:: ==================== ��������� �������� � ��� �������� ============================
:: �������� ����������� ������� 

IF DEFINED "c:\Program Files (x86)" ( 
cscript "C:\Windows\System32\Printing_Admin_Scripts\ru-RU\prndrvr.vbs" -a -m "Kyocera ECOSYS M3145dn KX" -i "\\share\Share\IT\Prints\KYOCERA\p3145dn\KXDriver\64bit\OEMSETUP.inf"
) ELSE (
cscript "C:\Windows\System32\Printing_Admin_Scripts\ru-RU\prndrvr.vbs" -a -m "Kyocera ECOSYS M3145dn KX" -i "\\share\Share\IT\Prints\KYOCERA\p3145dn\KXDriver\32bit\OEMSETUP.inf"
)
:: ��������� ����
cscript "C:\Windows\System32\Printing_Admin_Scripts\ru-RU\Prnport.vbs" -a -r IP_192.168.110.91 -h 192.168.110.91 -o raw -n 9100
:: ��������� ������� 
cscript "C:\Windows\System32\Printing_Admin_Scripts\ru-RU\prnmngr.vbs" -a -p "Kyocera ECOSYS P3145dn (dir)" -m "Kyocera ECOSYS M3145dn KX" -r "IP_192.168.110.91"

:: ����� ���������� ����������� �������
:: cscript "C:\Windows\System32\Printing_Admin_Scripts\ru-RU\prnmngr.vbs" -ac -p �\\prnt01\hp2000�

:: ====================== ���������� ��������� �������� ===============================

:: ������� ���� ������ 
echo ok > c:\ProgramData\printver1.txt

:end