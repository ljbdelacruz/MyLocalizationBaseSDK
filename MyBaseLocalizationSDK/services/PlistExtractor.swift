//
//  PlistExtractor.swift
//  MyBaseLocalizationSDK
//
//  Created by Lainel John Dela Cruz on 22/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation

class PlistExtractor{
    //contains the list of localization in the plist
    public static var localizationData:NSDictionary? = [:];
    init(resname:String){
        PlistExtractor.extractData(resname: resname);
    }
    public static func extractData(resname:String)->NSDictionary?{
        var nsDictionary: NSDictionary?
        if PlistExtractor.localizationData!.count <= 0 {
            if let path = Bundle.main.path(forResource: resname, ofType: "plist") {
                nsDictionary = NSDictionary(contentsOfFile: path)
                //sets the localization
                localizationData=nsDictionary;
            }
            return nsDictionary;
        }
        return PlistExtractor.localizationData;
    }
    public static func extractLocalization(mystring:String, locale:Int)->String{
        //this extracts the localization equivalent of the data
        do{
            let data = extractData(resname: "localization")?.first(where: { ($0.key as! String).lowercased() == mystring.lowercased()});
            let localization = data?.value != nil ? data!.value as! [String] : [];
            return localization.count > 0 ? localization[locale] : mystring;
        }catch{
            return mystring;
        }
    }
    
}

