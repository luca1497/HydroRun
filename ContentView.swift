//
//  ContentView.swift
//  challenge
//
//  Created by apple on 25/10/23.
//
import SwiftUI
    struct Restaurant: Identifiable{
 
        
 
        var id = UUID()
 
        var name: String
 
        var image: String
    }
 
    struct ContentView: View {
        var body: some View {
            NavigationView {
                List(restaurants) {restaurant in NavigationLink(destination:
                                                                    RestaurantDetailView(restaurant: restaurant),
                                                                label: {
                    Image(restaurant.image)
                        .frame(width: 40, height: 40)
                        .cornerRadius(15)
                    Text(restaurant.name)
                })
                }
                                                                }
                .navigationBarTitle("Restaurants", displayMode: .inline)
            }
        }
 
        var restaurants: [Restaurant] = [
 
        Restaurant (name: "Teakha", image: "teakha"),
 
        Restaurant (name: "Cafe Lois", image:"cafeloisl"),
 
        Restaurant (name: "Petite Oyster", image: "petiteoyster"),
 
        Restaurant (name: "For Kee Restaurant", image: "forkeerestaurant"),
 
        Restaurant (name: "Po's Atelier", image: "posatelier"),
 
        Restaurant (name: "Bourke Street Bakery", image: "bourkestreetbakery"),
 
        Restaurant (name: "Haigh's Chocolate", image: "haighschocolate"),
 
        Restaurant (name: "Palomino Espresso", image: "palominoespresso"),
 
        Restaurant (name: "five Leaves", image: "fiveleaves"),
 
        Restaurant (name: "Cafe Lore", image: "cafelore"),
 
        Restaurant (name: "Confessional", image: "confessional"),
 
        Restaurant (name: "Barrafina", image: "barrafina"),
 
        Restaurant (name: "Donostia", image: "donostia"),
 
        Restaurant (name: "Royal Oak", image: "royaloak"),
 
        Restaurant (name: "CASK Pub and Kitchen", image: "caskpubkitchen")]
 
 
        struct BasicImageRow: View {
 
        
 
        var restaurants: Restaurant
 
        var body: some View {
 
            
 
            HStack{
 
                Image(restaurants.image)
 
                    .resizable()
 
                    .cornerRadius(6)
 
                    .frame(width: 40, height: 40)
 
                Text("\(restaurants.name)")
 
            }
 
        }
 
    }
    struct FullImageRow: View{
        let restaurants: Restaurant
        var body: some View{
            ZStack{
 
                
 
                Image(restaurants.image)
 
                    .resizable()
 
                    .aspectRatio(contentMode: .fill )
 
                    .frame(height: 200)
 
                    .cornerRadius(10)
 
                    .overlay(
 
                        Rectangle()
 
                            .foregroundColor(.black)
 
                            .cornerRadius(10)
 
                            .opacity(0.2)
                    )
 
                Text(restaurants.name)
 
                    .font(.system(.title, design: .rounded))
 
                    .fontWeight(.black)
 
                    .foregroundColor(.white)
 
                
 
                
 
            }
 
        }
 
    }
    #Preview {
 
        ContentView()
 
    }
 
