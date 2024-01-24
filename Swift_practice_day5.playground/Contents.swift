import UIKit

// Exercise: Downloading Images Asynchronously
/// Create a function that simulates downloading images asynchronously. You will use DispatchQueue to simulate the asynchronous nature of image downloading. The goal is to download multiple images concurrently and then process them when all downloads are complete.

func downloadImages(imageURLs: [String], completion: @escaping ([UIImage]) -> Void) async {
    var downloadedImages = [UIImage]()

    await withTaskGroup(of: UIImage.self) { group in
        for imageURL in imageURLs {
            group.async {
                await downloadImage(from: imageURL)
            }
        }
        
        for result in group {
            if let image = result {
                downloadedImages.append(image)
            }
        }
    }

    completion(downloadedImages)
}

func downloadImage(from imageURL: String) async -> UIImage {
    guard let url = URL(string: imageURL),
          let (data, _) = try? await URLSession.shared.data(from: url),
          let image = UIImage(data: data) else {
        // Coalesce to provide a default image if download fails
        return UIImage(named: "placeholderImage") ?? UIImage(systemName: "photo")!
    }

    return image
}

