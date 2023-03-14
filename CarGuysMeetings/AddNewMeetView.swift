//
//  AddNewMeetView.swift
//  CarGuysMeetings
//
//  Created by Kacper Biaduń on 07/03/2023.
//

import SwiftUI

struct AddNewMeetView: View {
    @State var titleOfMeeting: String = ""
    @State var dateOfMeeting: String = ""
    @State var timeOfMeeting: String = ""
    @State var placeOfMeeting: String = ""
    
    //image picker
    @State var showImagePicker: Bool = false
    @State var selectedImage: Image? = Image("")
    
    var body: some View {
        VStack{
            Form{
                Section{
                    Text("Title: ")
                    TextField(text: $titleOfMeeting, prompt: Text("Required")){
                        Text("Title")
                    }
                    Text("Date: ")
                    TextField(text: $dateOfMeeting, prompt: Text("Required")){
                        Text("Date")
                    }
                    Text("Time: ")
                    TextField(text: $timeOfMeeting, prompt: Text("Required")){
                        Text("Time")
                    }
                    Text("Place: ")
                    TextField(text: $placeOfMeeting, prompt: Text("Required")){
                        Text("Place")
                    }
                    Text("Upload an image")
                    Button {
                        self.showImagePicker.toggle()
                    } label: {
                        Text("Select Image")
                    }

                    
                }
                Section{
                    Button(action: {
                        
                    }) {
                        Text("Create")
                    }
                }.frame(width: 500)
            }
        }.sheet(isPresented: self.$showImagePicker, content: {
            ImagePicker(image: self.$selectedImage)
        })
    }
}

struct AddNewMeetView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewMeetView()
    }
}
