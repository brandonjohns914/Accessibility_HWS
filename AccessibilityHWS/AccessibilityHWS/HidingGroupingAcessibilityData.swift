//
//  HidingGroupingAcessibilityData.swift
//  AccessibilityHWS
//
//  Created by Brandon Johns on 8/5/23.
//

import SwiftUI

struct HidingGroupingAcessibilityData: View {
    var body: some View {
        VStack{
            Group {
                Text("your score is")
                Text("1000")
                    .font(.title)
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Your score is 1000")  
            Group {
                Image(decorative: "Ellie")
                    .resizable()
                    .scaledToFit()
                    .accessibilityHidden(true) //view does nothing at all
            }
        }
    }
}

struct HidingGroupingAcessibilityData_Previews: PreviewProvider {
    static var previews: some View {
        HidingGroupingAcessibilityData()
    }
}
