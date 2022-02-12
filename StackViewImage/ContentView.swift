//
//  ContentView.swift
//  StackViewImage
//
//  Created by Hiren on 22/01/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack(spacing: 20) {
            VHeaderTitleView()
            HUserImagesView()
            Text("Need help with coding problems? Register!")
            Spacer()
            if verticalSizeClass == .compact {
                HSignupLoginView()
            }else{
                VSignupLoginView()
            }
        }
        .padding(.top,30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

struct VHeaderTitleView: View {
    var body: some View {
        VStack {
            Text("Instant Developer")
                .fontWeight(.medium)
                .font(.system(size: 40))
                .foregroundColor(.indigo)

            Text("Get help from experts in 15 minutes")
        }
    }
}

struct HUserImagesView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 10) {
            Image("user1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("user2")
                .resizable()
                .scaledToFit()
            Image("user3")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding(.horizontal,20)
    }
}

struct VSignupLoginView: View {
    var body: some View {
        VStack {
            Button {

            }label: {
                Text("Sign Up")
            }
            .frame(width: 250)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            Button {

            }label: {
                Text("Login")
            }
            .frame(width: 250)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}
struct HSignupLoginView: View {
    var body: some View {
        HStack {
            Button {

            }label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            Button {

            }label: {
                Text("Login")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}




