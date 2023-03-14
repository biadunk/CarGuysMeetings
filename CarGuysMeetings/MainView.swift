//
//  MainView.swift
//  CarGuysMeetings
//
//  Created by Kacper Biaduń on 06/03/2023.
//

import SwiftUI

struct MainView: View {
    @State var meetings: [Meet] = MeetExample.meet
    
    //presenting view to add new meet
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationView{
            HStack{
                List(meetings, id: \.id) { meetings in
                    HStack (spacing: 150){
                        VStack(spacing: 10){
                            Text(meetings.title)
                            Text(meetings.date)
                            Text(meetings.time)
                            Text(meetings.place)
                        }
                        Image(systemName: "car.2.fill")
                        
                    }
                }
                
            }.toolbar{
                ToolbarItem(placement: .bottomBar){
                    HStack(spacing: 100){
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "house")
                        }
                        
                        //button to push view of adding new meet
                        Button {
                            isPresented.toggle()
                        } label: {
                            Image(systemName: "plus")
                        }

                        
                        
                        NavigationLink(destination: {}) {
                            Image(systemName: "person.fill")
                        }
                    }.sheet(isPresented: self.$isPresented) {
                        AddNewMeetView()
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


//struct Struktura {
//    let nazwa: String
//    let id: String
//    
//    public init(
//        nazwa: String,
//        idCosta: String
//    ) {
//        self.nazwa = nazwa
//        id = idCosta
//    }
//}
