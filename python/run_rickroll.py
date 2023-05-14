import subprocess

if __name__ == "__main__":
    ps_launch_edge = "powershell.exe --WindowStyle hidden \'start microsoft-edge:"
    link = "https://www.youtube.com/watch?v=xvFZjo5PgG0\'"
    command = ps_launch_edge+link

    subprocess.call(command, shell=True)