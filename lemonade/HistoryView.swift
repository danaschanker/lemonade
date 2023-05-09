//
//  HistoryView.swift
//  lemonade
//
//  Created by Dana Schanker on 3/14/23.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        List{
            Text("Last Entered Amounts")
            Spacer()
            Text("3/17/23 $2.78")
            Text("3/23/23 $13.00")
            Text("3/27/23 $5.43")
        
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
}
