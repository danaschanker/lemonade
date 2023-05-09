//
//  CreateAccount.swift
//  lemonade
//
//  Created by danas23 on 5/3/23.
//

import SwiftUI


struct CreateAccount: View {
    @State var amount: String = ""
    @State var username: String = ""
    @State var lastname: String = ""
    @State var password: String = ""
    @State var firstname: String = ""
    
    @State private var doubleValue: Float = 0.0
    private let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        return numberFormatter
    }()

    var body: some View {
        NavigationView {
            VStack {
                TextField("First Name", text: $firstname)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                TextField("Last Name", text: $lastname)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                TextField("Username", text: $username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                TextField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Text("Enter Savings Goal Below:")
                TextField("Savings Goal", value: $doubleValue, formatter: numberFormatter)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                NavigationLink(destination: HomePageView()) {
                    Text("Create Account")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
                
            }
        }

    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}
