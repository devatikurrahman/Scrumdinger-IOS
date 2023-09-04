//
//  CounterView.swift
//  Scrumdinger
//
//  Created by Atikur Rahman on 9/4/23.
//

import SwiftUI


struct TextFieldView: View {
    @Binding var text: String
    
    var body: some View {
        TextField("Enter Text ", text: $text)
    }
}


struct CounterView: View {
    @State private var text = ""
    
    var body: some View {
        VStack {
            Text("You entered: \(text)")
            TextFieldView(text: $text)
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
