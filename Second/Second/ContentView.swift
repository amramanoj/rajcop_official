//
//  ContentView.swift
//  Second
//
//  Created by amramanoj on 10/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Click"){
            
                var value:Emp=Emp()
               
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
class Emp : Person{
    var name="amra ram"
    
 override   init(){
     name="manoj"
     print(name)
 }
       init(value:Int){
    print(value)
 }
    init(value:Int,value2:String){
    print(value)
        print(value2)
 }
    func empx(){
        print("working..a")
    }
}

class Manager:Emp{
    func manag(){
        print("working..b")
    }
}

class Person{
    func per(){
        print("working..c")
    }
}
