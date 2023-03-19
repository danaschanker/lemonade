//
//  EnterMoneyView.swift
//  lemonade
//
//  Created by Dana Schanker on 3/8/23.
//

import SwiftUI

struct EnterMoneyView: View {
    @State var amount: String = ""
    @State private var doubleValue: Float = 0.0
    private let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        return numberFormatter
    }()
    var body: some View {
        List {
            Text("Enter Amount Below")
            TextField("Enter Amount", value: $doubleValue, formatter: numberFormatter)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
          
            
            Spacer()
 //           lblOutput.text = "Your \(pet) is \(age) years old!"
            var savingsamount = String(format:"Savings Amount: %.2f", 0.75*Float(doubleValue))
            var spendingsamount = String(format:"Spendings Amount: %.2f", 0.25*Float(doubleValue))
            Text("\(savingsamount)")
            Text("\(spendingsamount)")
            Text("Submit Amount")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
            
            
            
        }
    }
    
    struct EnterMoneyView_Previews: PreviewProvider {
        static var previews: some View {
            EnterMoneyView()
        }
    }
    
    
}
