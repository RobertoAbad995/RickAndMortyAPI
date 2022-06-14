//
//  CharactersR&M_API.swift
//  RickAndMortyAPI
//
//  Created by Consultant on 6/14/22.
//

import Foundation

struct CharactersAPI{
    
    let baseURL:String = "https://rickandmortyapi.com/api/"
        
        func getCharacters(params:String) -> CharacterRequest{
            
            let urlEndpoint = baseURL + "character"
            
            var returnData = CharacterRequest()
            //create the url by urlString
            guard let url = URL(string: urlEndpoint) else {
                print("Invalid url...")
                return returnData
            }
            //create a semaophore to wait until get the response
            let semaphore = DispatchSemaphore(value: 0)
            URLSession.shared.dataTask(with: url) { data, response, error in
                let dataRecived = try! JSONDecoder().decode(CharacterRequest.self, from: data!)
                DispatchQueue.global().sync {
                    returnData = dataRecived
                    //response is correct, semaphore set signal
                    semaphore.signal()
                }
            }.resume()
            //semaphore wait until response is correct
            _ = semaphore.wait(wallTimeout: .distantFuture)
            return returnData
        }
    
}
