//
//  MovieObject.swift
//  FirstApp
//
//  Created by luser on 06.06.2021.
//

import Foundation
import Alamofire
import SwiftyJSON

class MovieObject: ObservableObject {
    
    @Published var posters = [String]()
    
    func getMovies() {
        let url = "http://cinema.areas.su/movies"
        AF.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                for index in 0..<json.count {
                    print(json[index]["poster"].stringValue)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
