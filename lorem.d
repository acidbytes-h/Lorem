import std.stdio;
import std.random;
import std.string;
import std.array;
import std.conv;
import std.algorithm;
import std.process;
void main() {
    string[] words = ["Hello", "World", "Lorem", "Ipsum", "Yay", "eLIzA", "D", "Programming", "Dlang", "Computer", "1", "2", "3", "4", "5"];
    string[] greetings = ["Hello", "Hi", "Hey", "Hallo", "Bonjour", "48 65 6c 6c 6f"];
    wait(spawnShell(`figlet "Lorem" | lolcrab -c "#b8004f, #9400d3, #0000ff, #006400, #b8860b, #d2691e"`));
    write("\nAsk me anything : ");
    while (true) {
        string input = readln().strip().toLower();
        if (input == "exit") {
            break;
        }
        if (input == "hello" || input == "hi" || input == "hey" || input == "hallo" || input == "bonjour" || input == "48 65 6c 6c 6f") {
            writeln("Lorem : ", choice(greetings));
            continue;
        }
        if (input.canFind("+")) {
        auto parts = input.split("+");
        int num1 = parts[0].strip.to!int;
        int num2 = parts[1].strip.to!int;
        int result = num1 + num2;
        writeln("Lorem : ", result);
        continue;
        }
        if (input.canFind("-")) {
        auto parts = input.split("-");
        int num1 = parts[0].strip.to!int;
        int num2 = parts[1].strip.to!int;
        int result = num1 - num2;
        writeln("Lorem : ", result);
        continue;
        }
        if (input.canFind("*")) {
        auto parts = input.split("*");
        int num1 = parts[0].strip.to!int;
        int num2 = parts[1].strip.to!int;
        int result = num1 * num2;
        writeln("Lorem : ", result);
        continue;
        }
        if (input.canFind("/")) {
        auto parts = input.split("/");
        int num1 = parts[0].strip.to!int;
        int num2 = parts[1].strip.to!int;
        int result = num1 / num2;
        writeln("Lorem : ", result);
        continue;
        }
        auto count = uniform(1, 25);
        write("Lorem : ");
        foreach (i; 0 .. count) {
            write(choice(words), " ");
        }
        writeln();
    }
}
