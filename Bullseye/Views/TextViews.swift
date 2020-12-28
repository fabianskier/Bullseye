//
//  TextViews.swift
//  Bullseye
//
//  Created by Oscar Cristaldo on 2020-12-26.
//

import SwiftUI

// MARK: - InstructionTextView

struct InstructionTextView: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .padding(.leading, 34.0)
            .padding(.trailing, 34.0)
            .foregroundColor(Color("TextColor"))
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

// MARK: - TargetTextView

struct TargetTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

// MARK: -

struct SliderLabelTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

// MARK: - LabelText

struct LabelTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}

// MARK: - BodyTextView

struct BodyTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

// MARK: - ButtonTextView

struct ButtonTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(12.0)
    }
}

// MARK: - ScoreTextView

struct ScoreTextView: View {
    var score: Int
    
    var body: some View {
        Text(String(score))
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
    }
}

// MARK: - DateTextView

struct DateTextView: View {
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionTextView(text: "Instructions")
            TargetTextView(text: "999")
            SliderLabelTextView(text: "55")
            LabelTextView(text: "Label")
            BodyTextView(text: "You scored 200 Points\n🎉🎉🎉")
            ButtonTextView(text: "Start New Round").padding()
            ScoreTextView(score: 123)
            DateTextView(date: Date())
        }
    }
}
