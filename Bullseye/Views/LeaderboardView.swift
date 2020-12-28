//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by Oscar Cristaldo on 2020-12-28.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        RowView(index: 1, score: 10, date: Date())
    }
}

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
