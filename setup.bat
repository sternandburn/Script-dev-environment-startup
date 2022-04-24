REM installation of Git and HeidiSQL, located in JobieSpinUp.zip folder
Git-2.25.0-64-bit.exe /verysilent
HeidiSQL_10.3.0.5771_Setup.exe /verysilent

REM Starts XAMPP & Apache, MySQL services
START /min C:\xampp\xampp-control.exe
START /min C:\xampp\mysql_start.bat
START /min C:\xampp\apache_start.bat

REM Displays password for cloning JOBIE repository
START JobiePass.txt

REM clone.sh uses Git to access and clone the repository
START clone.sh

REM This establishes a HeidiSQL connection with the given credentials
"C:\Program Files\HeidiSQL\heidisql.exe" -h=rogb-b107-mdnml -u=git -p=Unabl3!0381 -P3307"
