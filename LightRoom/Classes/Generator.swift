//
//  Generator.swift
//  LightRoom
//
//  Created by Muukii on 10/4/15.
//  Copyright © 2015 muukii. All rights reserved.
//

import Foundation

public extension LightRoom {

    /**
    CICategoryGenerator
     */
    public enum Generator {
        
        /**
        CIConstantColorGenerator
         
        Generates a solid color.
         */
        @available(iOS 5.0, OSX 10.4, *)
        public static func constantColorGenerator(color color: CIColor) -> ImageGenerator {
            
             return {
                
                let parameters = [
                    kCIInputColorKey: color
                ]
                
                let filter = CIFilter(name: "CIConstantColorGenerator", withInputParameters: parameters)
                return filter!.outputImage!
            }
        }
        
        @available(iOS 6.0, OSX 10.4, *)
        public static func randomGenerator() -> ImageGenerator {
            
            return {
                let filter = CIFilter(name: "CIRandomGenerator", withInputParameters: [:])
                return filter!.outputImage!
            }
        }
    }
}