//
//  CounterView.swift
//  Scrumdinger
//
//  Created by Atikur Rahman on 9/4/23.
//

import SwiftUI


struct TextFieldView: View {
    //@Binding var text: String
    @Binding var textTest: String
    
    var body: some View {
        TextField("Enter Text ", text: $textTest)
    }
}


struct CounterView: View {
    @State private var text = ""
    
    var body: some View {
        VStack {
            Text("You entered: \(text)")
            TextFieldView(textTest: $text)
            .padding(10)
            .font(.title)
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
