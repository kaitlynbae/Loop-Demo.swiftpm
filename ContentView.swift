import SwiftUI

struct ContentView: View {
    @State var myOutPut = ""
    
    @State var fruitArray = ["Strawberry","Watermelon", "Mango"]
    
    @State var BrianArray = ["Friends with Sebastian","Went to the Moon","Dropped 20 on Chris","Grammy with TSwift"]
    
    @State var candyArray = ["Kit-Kat","Snickers","Twix","Sour Patch Kids","Mini M&M's"]
    
    @State var restaurantArray = ["Giacomos","Garibaldis","Portillos","altThai","Wild Berry"]
    
    @State var contact = ["Name" : " Larry","Address" : " 801 Kensington", "Phone Number" : " 222-2222", "Zip Code" : " 60056"]
    
    var body: some View {
        VStack {
          Text(myOutPut)
                .font(.largeTitle)
            Button("Array 1"){
                var output = ""
                for item in fruitArray{
                    output += "\(item)\n"
                }
                myOutPut = output
            }
            Button("Array 2"){
                var output = ""
                for i in 0...3{
                    output += "\(BrianArray[i])\n"
                }
                
            }
            Button("Array 3"){
                var output = ""
                for i in 0..<4{
                    output += "\(candyArray[i])\n"
                }
                myOutPut = output
            }
            Button("Array 4"){
                var output = ""
                for i in 1..<restaurantArray.count{
                    output += "\(restaurantArray[i])\n"
                }
                myOutPut = output
            }
            Button("Dictionary"){
                var output = ""
                for (key,value) in contact{
                    output += "\(key):\(value)\n"
                }
                myOutPut = output
            }
    
        }
    }
}
