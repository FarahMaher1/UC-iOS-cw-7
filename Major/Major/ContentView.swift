//
//  ContentView.swift
//  Major
//
//  Created by Macbook Air on 22/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tap: Bool = true
    @State var majors = ["Computer Engineering","Computer Science ","Other"]
    @State var blank = ""
    var body: some View {
    
              VStack {
                    Spacer()
                    HStack{
                        Text("Choose your major!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        Image(systemName: tap ? "plus.circle" : "minus.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(tap == true ? .green: .red)
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 1.0))
                                {
                                tap.toggle()
                            }
                        }
                    }
                    Spacer()
                    if tap == false {
                        ForEach(majors, id: \.self )
                        { major in
                            Text(major)
                                .font(.title)
                                .fontWeight(.heavy)
                                .padding()
                                .frame(width: 350, height: 70)
                                .background( blank == major ? .purple: .indigo)
                                .cornerRadius(20)
                                .onTapGesture {
                                 blank = major
                            }
                        }
                        Spacer()
                        Text("Your major is :")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text(blank)
                            .font(.largeTitle)
                        Spacer()
                    }
                    Spacer()
                        }
                .padding()
                    }
            }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
