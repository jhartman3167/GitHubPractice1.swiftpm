import SwiftUI

struct ContentView: View {
    @State var answer: Int = 0
    
    @State var number1: Int = 0
    @State var number2: Int = 0
    
    var body: some View {
        TextField("Number 1", value: $number1, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
        TextField("Number 2", value: $number2, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
        Button("Multiply") {
            answer = number1 * number2
        }
        .clipShape(Rectangle())
        .foregroundColor(.red)
        Button("Add") {
            answer = number1 + number2
        }
        .clipShape(Circle())
        .foregroundColor(.blue)
        Button("Subtract") {
            answer = number1 - number2
        }
        .clipShape(Circle())
        .foregroundColor(.blue)
        Button("Divide") {
            answer = number1 / number2
        }
        .foregroundColor(.blue)
        
        Text("\(answer)")
            .font(.title)
    }
}
