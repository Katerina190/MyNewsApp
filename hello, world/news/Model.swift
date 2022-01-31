//
//  Model.swift
//  NewsApp
//
//  Created by Ekaterina Sedova on 26.01.22.
//

import Foundation

var articles: [Article] = []

var urlToData: URL {
    let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"data.json" // back path to library
    let urlPath =  URL(fileURLWithPath: path)
    return urlPath
}

func loadNews(completionHandler: (() -> Void)?)     {
    
    let url = URL(string: "https://newsapi.org/v2/everything?&apiKey=cc8801612b244f97801336bf4b7830c3")
    let session = URLSession(configuration: .default)
    
    let downloadTask = session.downloadTask(with: url! ) { (urlFile, response, error) in
        if url != nil {
            
            try? FileManager.default.copyItem(at: urlFile!, to: urlToData)
            
            parseNews()
            completionHandler?() // table on
            
        }
    }
  
    downloadTask.resume() // on
}
func parseNews() {
   
    let data = try? Data(contentsOf: urlToData)
    if data == nil {
        return
    }
    let rootDictionaryAny = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
    if rootDictionaryAny == nil {
        return
    }
    
    let rootDictionary = rootDictionaryAny as? Dictionary<String, Any>
    if rootDictionary == nil {
        return
    }
    
    if let array = rootDictionary!["articles"] as? [Dictionary<String, Any>] {
        var returnArray: [Article] = []
        
        for dict in array  {
            let newArticle  = Article(dictionary: dict)
            returnArray.append(newArticle)
        }
        
        articles = returnArray
    }
    
   
}
