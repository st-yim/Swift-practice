import UIKit


/// Read data from a file

let fileURL = URL(fileURLWithPath: "/path/to/your/file.txt")

do {
    let fileData = try Data(contentsOf: fileURL)
    
    if let fileContents = String(data: fileData, encoding: .utf8) {
        print("File contents:")
        print(fileContents)
    } else {
        print("Unable to convert data to string")
    }
} catch {
    print("Error reading file:", error.localizedDescription)
}



/// Read data from a website

guard let url = URL(string: "https://www.example.com") else {
    print("Invalid URL")
    exit(1)
}


let session = URLSession.shared

let task = session.dataTask(with: url) { data, response, error in
  
    if let error = error {
        print("Error: \(error)")
        return
    }
    
    guard let responseData = data else {
        print("No data received")
        return
    }
    
    if let dataString = String(data: responseData, encoding: .utf8) {
        print("Data received:")
        print(dataString)
    } else {
        print("Unable to convert data to string")
    }
}

task.resume()

RunLoop.main.run()


