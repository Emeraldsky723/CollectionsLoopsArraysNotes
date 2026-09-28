//
//  ContentView.swift
//  CollectionsLoopsArraysNotes
//
//  Created by SCOTT LOZOYA on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    //making a blank array
    @State var ages: [Int] = []
    //building an array with stuff in it
    @State var ages2 = [16,25,8]
    //making a blank dictionary
    @State var dictionary: [String: Int] = [:]
    //creating a dictionary with values in it
    @State var dictionary2 = ["dog":4,"cow":7,"Pony":50]
    var body: some View {
        VStack {
            Button("Push me"){
                //adding something to an array
                ages.append(5)
                //prints the entire array
                print(ages)
                //prints one object depending on value
                print(ages2[1])
                //change an object in an array
                ages2[1] = 100
                print(ages2[1])
                //equivalent to add in java
                ages2.insert(200, at: 1)
                print(ages2)
                //putting an array at the end of another
              //  ages2.append(contentsOf: ages)
                print(ages2)
                //removing an item from an array
               // ages2.remove(at: 0)
                print(ages2)
                //makes the array blank again
                //ages2.removeAll()
                //nil coalasing
                print(ages2.randomElement() ?? 0)
                
                var index = Int.random(in: 0..<ages2.count)
                print(ages2[index])
                //safe unwrapping of an optional
                if let r = ages2.randomElement(){
                    print(r)
                }
                
              //  for (int i = 0; i < ages2.length;i++)
                
                for i in 0..<ages2.count{
                    print(ages2[i])
                }
                var x = 0
                while(x < ages2.count){
                    print(ages2[x])
                    x += 1
                }
                var y = ages2.count - 1
                while(y >= 0){
                    print(ages2[y])
                    y -= 1
                }
                
            //for each loop
                for dog in ages2{
                    print(dog)
                }
                
            }
            HStack{
                ForEach(ages2,id: \.self){ num in
                    
                    Text("\(num)")
                        .padding()
                        .background(.green)
                        .clipShape(Circle())
                        .font(.largeTitle)
                }
            }
            Button("Dictionary"){
                //accessing elements in dictionaries
                if let value = dictionary2["dogs"]{
                    print(value)

                }
                //update an element in a dictionary
                dictionary2["Pony"] = 57
                
                //add element to a dictionary
                dictionary2["pig"] = 10
                
                for (a,b) in dictionary2{
                    print(a + " \(b)")
                }
            }
            
        }
       
    }
}

#Preview {
    ContentView()
}
