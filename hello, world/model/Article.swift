//
//  Article.swift
//  NewsApp
//
//  Created by Ekaterina Sedova on 26.01.22.
//

import Foundation

/*
 
 {
 -"source": {
 "id": "reuters",
 "name": "Reuters"
 },
 "author": null,
 "title": "Pfizer and BioNTech launch trial of Omicron-targeted COVID vaccine - Reuters",
 "description": "Pfizer Inc <a href=\"https://www.reuters.com/companies/PFE.N\" target=\"_blank\">(PFE.N)</a> and BioNTech SE said on Tuesday they started a clinical trial to test a new version of their vaccine specifically designed to target the COVID-19 Omicron variant, which h…",
 "url": "https://www.reuters.com/business/healthcare-pharmaceuticals/pfizer-biontech-launch-trial-omicron-targeted-covid-vaccine-2022-01-25/",
 "urlToImage": "https://www.reuters.com/resizer/eLYBMyTgOwHNPN6y2ayiesIyF7g=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/YRIUA5UI4RIVFH7PY4QEV2UZXU.jpg",
 "publishedAt": "2022-01-25T20:30:00Z",
 "content": "NEW YORK, Jan 25 (Reuters) - Pfizer Inc (PFE.N) and BioNTech SE said on Tuesday they started a clinical trial to test a new version of their vaccine specifically designed to target the COVID-19 Omicr… [+3379 chars]"
 },
 */

struct Article {
    
    var author: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
    var publishedAt: String
    var content: String
    var sourceName: String
    
    
    init(dictionary: Dictionary<String, Any>) {
        author = dictionary["author"] as? String ?? "" //в случае если в строке автор будет нил, то он возьмет   пустую строку после ??
        title = dictionary["title"] as? String ?? ""
        description = dictionary["description"] as? String ?? ""
        url = dictionary["url"] as? String ?? ""
        urlToImage = dictionary["urlToImage"] as? String ?? ""
        publishedAt = dictionary["publishedAt"] as? String ?? ""
        content = dictionary["sourceName"] as? String ?? ""
        
        sourceName = (dictionary["source"] as? Dictionary<String, Any> ?? ["":""])["name"] as? String ?? ""
    }
}
