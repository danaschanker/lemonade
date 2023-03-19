//
//  HomePageView.swift
//  lemonade
//
//  Created by Dana Schanker on 2/27/23.
//

import SwiftUI

struct HomePageView: View {
    
    
        @State private var isSideBarOpened = false
        
        var body: some View {
            ZStack {
                NavigationView {
                    GeometryReader { dimensions in
                        List {
                            Text("                        Welcome, Dana!")
                            Spacer()
                            Spacer()
                            Text("Saving Account Balance: $142.31 ")
                                .font(.headline)
                                .foregroundColor(Color.green)
                            Text("Spending Account Balance: $51.68 ")
                                .font(.headline)
                                .foregroundColor(Color.blue)
                            Spacer()
                            Text("Savings Goal: $500")
                                .font(.headline)
                                .foregroundColor(Color.purple)
                            Text("You need $357.69 more to reach your goal! ")
                        }
                        .toolbar {
                            Button(role: ButtonRole.destructive) {
                                isSideBarOpened.toggle()
                            } label: {
                                Label("Toggle SideBar", systemImage: "line.3.horizontal.circle.fill")
                                    .foregroundColor(Color.gray)
                            }
                        }
                        .listStyle(.inset)
                        .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
                    }
                }
                SideMenu(isSidebarVisible: $isSideBarOpened)
            }
        }
    }


          

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomePageView()
    }
}
