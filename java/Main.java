import java.io.IOException;

public class Main {
    static String ps_launch_edge = "powershell.exe -WindowStyle hidden 'start microsoft-edge:";
    // non-monitized youtube rick roll link0
    static String link = "https://www.youtube.com/watch?v=xvFZjo5PgG0'";
    static String command = ps_launch_edge+link;

    public static void main(String[] args) throws IOException, InterruptedException{
        // launches windows microsoft edge
        //ProcessBuilder builder = new ProcessBuilder();
        //builder.command("");
        //builder.start();
        System.out.println(command);
        // this is super gnarly idk why it doesn't work but it works if you
        // wrap the output and launch it like this;
        // javac Main.java; $com = java Main; Invoke-Expression $com
        Runtime.getRuntime().exec(ps_launch_edge+link);
    }
}