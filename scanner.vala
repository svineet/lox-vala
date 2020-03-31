namespace Lox {
    public class Scanner {
        private string source;

        public Scanner(string source_code) {
            source = source_code;
        }

        public Gee.ArrayList<string> scan_tokens() {
            var tokens = new Gee.ArrayList<string> ();
            tokens.add ("test");

            return tokens;
        }
    }
}
