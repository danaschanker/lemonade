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
            Text("Name")
            Text("Password")
            Text("Phone Number")
            Text("Email")
            Text("Address")
            Text("Full Account Value")
        }
    }
}

struct MyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
