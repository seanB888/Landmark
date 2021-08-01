//
//  LandmarkRow.swift
//  Landmark
//
//  Created by SEAN BLAKE on 8/1/21.
//

import SwiftUI

struct LandmarkRow: View {
    // adding landmark as a stored property
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            // star image for isFavorite
            if landmark.isFavorite {
                Image(systemName: "star.fill").renderingMode(.original)
                    .font(.system(size: 16, weight: .regular))
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
