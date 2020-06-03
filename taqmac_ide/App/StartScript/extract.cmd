@echo on

IF NOT EXIST ./configuration (
	7za.exe x *.zip -aoa -o*
) ELSE (
	echo "OK"
)

pause