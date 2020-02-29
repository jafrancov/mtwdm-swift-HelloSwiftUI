//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Alejandro Franco on 15/02/20.
//  Copyright © 2020 Alejandro Franco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var tapCount = 0
    @State private var username = ""
    let students = ["Juan", "Pedro", "Luisa"]
    @State private var selectedStudent = 0
    
    var body: some View {
//        Form{
//            Text("Username")
//                .font(.callout)
//                .bold()
//            TextField("Enter username...", text: $username)
////                .textFieldStyle(RoundedBorderTextFieldStyle())
//            Text("Your username is \(username)")
//        }
        
//        NavigationView {
//            Form {
//                Picker("Select your student", selection: $selectedStudent) {
//                    ForEach(0 ..< students.count, id: \.self) {
//                        Text(self.students[$0])
//                    }
//                }
//                Text("Student selected: \(students[self.selectedStudent])")
//            }
//        }
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedStudent, label: Text("Student")) {
                        ForEach(0 ..< students.count) {
                            Text(self.students[$0])

                        }
                    }
                }
            }.navigationBarTitle("Select your student")

        }
        
//        Form {
//        Button("Tap to count: \(tapCount)") {
//            self.tapCount += 1
//        }
        
//        NavigationView {
//            Form {
//                Section {
//                    Text("Alejandro Franco")
//                        .font(.title)
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                        .font(.title)
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                        .font(.title)
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                        .font(.title)
//                }
//                Section {
//                    Text("Alejandro Franco")
//                        .font(.title)
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                        .font(.title)
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                        .font(.title)
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                    Text("Alejandro Franco")
//                        .font(.title)
//                }
//            } .navigationBarTitle("SwiftUI")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
