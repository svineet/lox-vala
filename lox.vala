public class LoxInterpreter {
    private static void run(string source_code) {
    }

    private static void run_file(string source_file) {
    }

    private static void error(int line, string message) {
        report(line, "", message);
    }

    private static void report(int line, string error, string message) {
        stderr.printf("[%d] | %s error encountered: %s", line, error, message);
    }

    public static int main(string[] args) {
        if (args.length > 2) {
            stdout.printf("Usage: lox [source.lox]\n");
        } else if (args.length == 2) {
            // Execute the file

            run_file(args[0]);
        } else {
            // Start a REPL

            while (true) {
                stdout.printf("> ");
                string? line = stdin.read_line();
                if (line != null)
                    run(line);
                else
                    break;
            }
        }

        return 0;
    }
}
