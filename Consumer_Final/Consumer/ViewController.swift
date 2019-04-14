//
//  ViewController.swift
//  Consumer
//
//  Created by Ali Akhtar on 13/04/2019.
//  Copyright © 2019 Ali Akhtar. All rights reserved.
//

import UIKit
import MyFramework
struct MyGitHub: Codable {
    
    let name: String?
    let location: String?
    let followers: Int?
    
}
enum RequestError: Error {
    case invalidUrl
}

struct GitHubRequest: APIRequest {
    
    func makeRequest(from stringUrl: String) throws -> URLRequest {
        guard let gitUrl = URL(string: stringUrl) else {
            throw RequestError.invalidUrl
        }
        return URLRequest(url: gitUrl)
    }
    
    func parseResponse(data: Data) throws -> MyGitHub {
        return try JSONDecoder().decode(MyGitHub.self, from: data)
    }

}
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let apiLoader = APIRequestLoader(apiRequest: GitHubRequest())
//        apiLoader.loadAPIRequest(requestData: "https://api.github.com/users/aliakhtar49") { (githubModel, error) in
//            print((githubModel?.name)!)
//        }
//
        apiLoader.getAlamofireResponse("https://api.github.com/users/aliakhtar49") { (json) in
            print(json)
        }
    }
}

