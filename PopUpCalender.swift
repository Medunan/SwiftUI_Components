//
//  PopUpCalender.swift
//  Mugaam
//
//  Created by Medunan Skyraan  on 01/08/23.
//

import SwiftUI

struct PopUpCalender: View {
    
    @State var datePick: Date = Date()
    @Binding var selecetedDate: Double
    @Binding var isShowCalenderPopUp: Bool
    var body: some View {
        VStack{
            DatePicker("", selection: $datePick, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
            
            Divider()

            HStack {
                
                
                Button {
                    isShowCalenderPopUp = false
                } label: {
                    Text("Cancel")
                        .frame(width: UIScreen.main.bounds.width * 0.8 / 2 , alignment: .center)
                        
                }
                
                Divider()
                    .frame(height: 30)
                   
                
                Button {
                    selecetedDate = datePick.timeIntervalSince1970
                    isShowCalenderPopUp = false
                } label: {
                    Text("Save")
                        .frame(width: UIScreen.main.bounds.width * 0.8 / 2 , alignment: .center)
                        
                }
    

            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.8, height: 360)
    }
}

//struct PopUpCalender_Previews: PreviewProvider {
//    static var previews: some View {
//        PopUpCalender()
//    }
//}
