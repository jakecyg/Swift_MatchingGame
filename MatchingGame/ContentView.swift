//
//  ContentView.swift
//  MatchingGame
//
//  Created by Jake Choi on 2020-11-19.
//

//imports SwiftUI package
import SwiftUI

//swift keywords are in magenta
//struct = is a container for variables
//in swift can have functions and behaviours
// ContentView : View means this struct is going to function like a view
//Views: rectangular areas in the screen for drawing and multi touch
//i.e. ContentView == the whole screen
struct ContentView: View {
    //declaration
    //some View == type. i.e. the type of the var body declaration can be any type as long as it behaves like a view(some view)
    //implicit return keyword
    var body: some View {
        //Zstack = arranges view back to back in z axis
        //Hstack = arranges view horizontally side by side
        return HStack(content:{
            return ForEach(0..<4, content:{ index in
                CardView(isFaceUp: false)
            })
        })  //by convention put modifiers for combinerviews(zstack) on a line by themselves
            .padding()
            .foregroundColor(Color.yellow)
    }
}

struct CardView: View{
    var isFaceUp: Bool
    var body: some View{
        return ZStack(content: {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3) //if you apply foregroundColor to Zstack = apply the color for all view within("can be overridden")
                Text("👻").font(Font.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
           
        })
    }
}

//glues code to preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
