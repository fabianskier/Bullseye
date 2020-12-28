//
//  RoundedImageViewStroked.swift
//  Bullseye
//
//  Created by Oscar Cristaldo on 2020-12-26.
//

import SwiftUI

// MARK: - RoundedImageViewStroked

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght
                   , height: Constants.General.roundedViewLenght)
            .overlay(
                Circle()
                    .strokeBorder(
                        Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeLineWidth
                    )
            )
    }
}

// MARK: - RoundedImageViewFilled

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor")))
    }
}

// MARK: - RoundRectTextView

struct RoundRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .font(.title3)
            .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                    .stroke(lineWidth: Constants.General.strokeLineWidth)
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
}

// MARK: - RoundTextView

struct RoundTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght
                   , height: Constants.General.roundedViewLenght)
            .overlay(
                Circle()
                    .strokeBorder(
                        Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeLineWidth
                    )
            )
    }
}

// MARK: - PreviewView

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundRectTextView(text: "100")
            RoundTextView(text: "1")
        }
    }
}

// MARK: - RoundedImageViewStroked_Previews

struct RoundedImageViewStroked_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
