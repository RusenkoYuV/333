@Echo off
SetLocal EnableExtensions EnableDelayedExpansion
For /F "Tokens=1* Delims==" %%i In ('WMIC Path Win32_LocalTime Get /Value ^| Find "="') Do (
  Set V=%%j
  Set $%%i=!V:~0,-1!
)
If "%$DayOfWeek%"=="0" Set $DayOfWeek=7
For /F "Tokens=%$DayOfWeek%" %%i In ("�������쭨� ��୨� �।� ��⢥� ��⭨� �㡡�� ����ᥭ�") Do Set $DayOfWeekName=%%i
Echo --------------------------------------
Echo ���� ������   : %$DayOfWeekName% (%$DayOfWeek%-� ���� ������)
Echo --------------------------------------
if %$DayOfWeek%==4 goto :super
if not %$DayOfWeekName%==4 goto :nesuper
if errorlevel 1 goto :nesuper
if errorlevel 0 goto :super
:nesuper
echo "bad day((("
echo "bad day(((">>log.txt
goto :bad_end
:super
Echo --------------------------------------
echo "this day is beautiful! start new bat?"
Pause>nul
Echo --------------------------------------
:bad_end