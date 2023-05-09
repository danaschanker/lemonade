//
//  MyAccountView.swift
//  lemonade
//
//  Created by Dana Schanker on 3/8/23.
//

import SwiftUI

struct MyAccountView: View {
    var body: some View {
        List{
            Text("Dana S.")
            Text("6501234567")
            Text("ds@yahoo.org")
            Text("123 1st Street")
            Text("Full Account Value : $193.99")
        }
    }
}

struct MyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
