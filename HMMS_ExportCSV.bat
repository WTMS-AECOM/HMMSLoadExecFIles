REM @echo off
setlocal

set connection=-UWTMS -PPencil$1492 -Slocalhost\MSSQLSERVER01
set curr_date=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%

set backupDIR=backup
IF not exist %backupDIR% (mkdir %backupDIR%)

set exportDIR=export
IF not exist %exportDIR% (mkdir %exportDIR%)

set logDIR=log
IF not exist %logDIR% (mkdir %logDIR%)
set logfile=..\%logdir%\%curr_date%_log

set errorfile=..\%logdir%\%curr_date%_error


mkdir "%backupDIR%\%curr_date%_backup"

cd %exportDIR%

xcopy /I *.csv "..\%backupDIR%\%curr_date%_backup"
xcopy /I *.fmt "..\%backupDIR%\%curr_date%_backup"

set target=..\%backupDIR%
set days=-30

for /f "usebackq delims=" %%G in (`forfiles /p "%target%" /c "cmd /c if /i @isdir == true echo @path" /d %days% 2^>nul`) do echo rd /s /q "%%~G"

REM =========================================================================================

REM MXQ at File Creation
bcp HMMS.dbo.MXQ_VIEW format nul -c -T %connection% -fMXQ.fmt -t, -e%errorfile%_MXQ_FMT -o%logfile%_MXQ_FMT

REM MXQ Output file = empty fields are NUL
bcp HMMS.dbo.MXQ_VIEW out MXQ.csv %connection% -fMXQ.fmt -e%errorfile%_MXQ_CSV -o%logfile%_MXQ_CSV

REM =========================================================================================

REM INV at File Creation
bcp HMMS.dbo.INV_VIEW format nul -c -T %connection% -fINV.fmt -t, -e%errorfile%_INV_FMT -o%logfile%_INV_FMT

REM INV  Output file = empty fields are NUL
bcp HMMS.dbo.INV_VIEW out INV.csv %connection% -fINV.fmt -e%errorfile%_INV_CVS -o%logfile%_INV_CVS

REM =========================================================================================

REM ISU at File Creation
bcp HMMS.dbo.ISU_VIEW format nul -c -T %connection% -fISU.fmt -t, -e%errorfile%_ISU_FMT -o%logfile%_ISU_FMT

REM ISU  Output file = empty fields are NUL
bcp HMMS.dbo.ISU_VIEW out ISU.csv %connection% -fISU.fmt -e%errorfile%_ISU_CVS -o%logfile%_ISU_CVS

REM =========================================================================================

REM NOP at File Creation
bcp HMMS.dbo.NOP_VIEW format nul -c -T %connection% -fNOP.fmt -t, -e%errorfile%_NOP_FMT -o%logfile%_NOP_FMT

REM NOP  Output file = empty fields are NUL
bcp HMMS.dbo.NOP_VIEW out NOP.csv %connection% -fNOP.fmt -e%errorfile%_NOP_CVS -o%logfile%_NOP_CVS

REM =========================================================================================

REM ORD at File Creation
bcp HMMS.dbo.ORD_VIEW format nul -c -T %connection% -fORD.fmt -t, -e%errorfile%_ORD_FMT -o%logfile%_ORD_FMT

REM ORD  Output file = empty fields are NUL
bcp HMMS.dbo.ORD_VIEW out ORD.csv %connection% -fORD.fmt -e%errorfile%_ORD_CSV -o%logfile%_ORD_CSV

REM =========================================================================================

REM QOH at File Creation
bcp HMMS.dbo.QOH_VIEW format nul -c -T %connection% -fQOH.fmt -t, -e%errorfile%_QOH_FMT -o%logfile%_QOH_FMT

REM QOH  Output file = empty fields are NUL
bcp HMMS.dbo.QOH_VIEW out QOH.csv %connection% -fQOH.fmt -e%errorfile%_QOH_CVS -o%logfile%_QOH_CVS

REM =========================================================================================

REM TRN at File Creation
bcp HMMS.dbo.TRN_VIEW format nul -c -T %connection% -fTRN.fmt -t, -e%errorfile%_TRN_FMT -o%logfile%_TRN_FMT

REM TRN  Output file = empty fields are NUL
bcp HMMS.dbo.TRN_VIEW out TRN.csv %connection% -fTRN.fmt -e%errorfile%_TRN_CSV -o%logfile%_TRN_CSV

REM =========================================================================================

cd ..




