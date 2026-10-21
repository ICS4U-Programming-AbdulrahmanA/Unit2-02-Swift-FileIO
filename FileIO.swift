import Foundation

let inputURL = URL(fileURLWithPath: "input.txt")
let outputURL = URL(fileURLWithPath: "output.txt")

func main() {
    do {
        // Read the input file and start the running sum and output messages.
        let input = try String(contentsOf: inputURL, encoding: .utf8)
        var sum = 0
        var outputLines: [String] = []

        // Convert each line to an integer; report invalid lines and continue.
        input.enumerateLines { line, _ in
            if let number = Int(line) {
                sum += number
            } else {
                outputLines.append("Error: invalid input")
            }
        }

        // Write any errors first, followed by the sum of valid integers.
        outputLines.append(String(sum))
        let output = outputLines.joined(separator: "\n") + "\n"
        try output.write(to: outputURL, atomically: true, encoding: .utf8)
    } catch {
        // Report file read or write failures to standard error.
        let message = "Error reading or writing a file: "
            + error.localizedDescription + "\n"
        FileHandle.standardError.write(Data(message.utf8))
    }
}

main()