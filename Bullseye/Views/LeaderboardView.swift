//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by Oscar Cristaldo on 2020-12-28.
//

import SwiftUI

// MARK: - LeaderboardView

struct LeaderboardView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 10) {
                HeaderView(text: "Leaderboard")
                LabelView()
                RowView(index: 1, score: 10, date: Date())
            }
        }
    }
}

// MARK: - RowView

struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    
    var body: some View {
        HStack {
            RoundTextView(text: String(index))
            Spacer()
            ScoreTextView(score: score)
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            DateTextView(date: date)
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        }.background(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeLineWidth)
        )
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}

// MARK: - HeaderView

struct HeaderView: View {
    let text: String
    
    var body: some View {
        ZStack {
            BigBoldTextView(text: text)
            
            HStack {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    RoundedImageViewFilled(systemName: "xmark")
                        .padding(.trailing)
                })
            }
        }
    }
}

// MARK: - LabelView

struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLenght)
            Spacer()
            LabelTextView(text: "Score")
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            LabelTextView(text: "Date")
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        }.padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}

// MARK: - LeaderboardView_Previews

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
        LeaderboardView()
            .previewLayout(.fixed(width: 568, height: 320))
        LeaderboardView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        LeaderboardView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
