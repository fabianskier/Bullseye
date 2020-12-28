//
//  ContentView.swift
//  Bullseye
//
//  Created by Oscar Cristaldo on 2020-12-24.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionView(game: $game)
                    .padding(.bottom, alertIsVisible ? 0 : 100)
                if alertIsVisible {
                    PointsView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                } else {
                    ButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                }
            }
            if !alertIsVisible {
                SliderView(sliderValue: $sliderValue)
            }
        }
    }
}

// MARK: - SliderView

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelTextView(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelTextView(text: "100")
        }
        .padding()
    }
}

// MARK: - ButtonView

struct ButtonView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            withAnimation{
                alertIsVisible =  true
            }
        }, label: {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
                .foregroundColor(Color("TextColor"))
                .padding(20.0)
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(.white)
                .cornerRadius(21.0)
            
        }
        )
        
    }
}

// MARK: - InstrucionView

struct InstructionView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            InstructionTextView(text: "🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            
            TargetTextView(text: String(game.target))
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
