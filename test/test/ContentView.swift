//
//  ContentView.swift
//  test
//
//  Created by Serge Brainin on 05/11/2021.
//

import SwiftUI
import ArgumentParser  // Available from Apple: https://github.com/apple/swift-argument-parser
import Foundation
import os
import RealityKit

struct ContentView: View {
    @State private var output_folder: String = ""
    @State private var input_folder: String = ""
    

    
    var body: some View {
        VStack {
            
            Text("Serge Brainin's Photogrametry App!")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            TextField(/*@START_MENU_TOKEN@*/"Images folder"/*@END_MENU_TOKEN@*/, text: $input_folder)
                .padding(.all)
                
            TextField(/*@START_MENU_TOKEN@*/"Output folder for the 3d model"/*@END_MENU_TOKEN@*/, text: $output_folder)
                .padding(.all)
            Button(action: test) {
                /*@START_MENU_TOKEN@*/Text("Ok👍 Start making my model!🤖")
                    .fontWeight(.regular)
                    .padding(.all)/*@END_MENU_TOKEN@*/
            }
            .padding(.all)
        }
        
    }
    
    func test(){
        HelloPhotogrammetry.main([String(input_folder), String(output_folder), "-d", "medium","-o", "sequential", "-f", "normal"])

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.all)
            .environment(\.sizeCategory, .large)
            .frame(width: 500.0, height: 500.0)
            
            
            
            
        
    }
}
