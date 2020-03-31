namespace Lox {
    public class LoxInterpreter {
        private static bool error_encountered = false;

        private static void run(string source_code) {
            var scanner = new Lox.Scanner(source_code);
            var list = scanner.scan_tokens();

            foreach (string token in list) {
                stdout.printf("%s ", token);
            }
            stdout.printf("\n");
        }

        private static void run_file(string source_file) {
            var file = GLib.File.new_for_path (source_file);
            var data_input_stream = GLib.DataInputStream (file.read());
        }

        private static void error(int line, string message) {
            report(line, "", message);
        }

        private static void report(int line, string where, string message) {
            stderr.printf("[%d] | %s error encountered: %s", line, where, message);
            error_encountered = true;
        }

        public static int main(string[] args) {
            if (args.length > 2) {
                stdout.printf("Usage: lox [source.lox]\n");
            } else if (args.length == 2) {
                // Execute the file

                run_file(args[0]);
            } else {
                // Start a REPL
                stdout.printf("Lox 0.1\n\n");

                while (true) {
                    stdout.printf(">>> ");
                    string? line = stdin.read_line();
                    if (line != null)
                        run(line);
                    else
                        break;

                    // Don't kill the REPL if error encountered in previous
                    // line
                    if (error_encountered)
                        error_encountered = false;
                }
            }

            return 0;
        }
    }
}
