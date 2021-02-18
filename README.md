# Notion

[Avocado](https://www.notion.so/Avocado-75cd0407dc5e414aab2ed6840c9d7058)

[Avocado UI Library](https://www.notion.so/Avocado-UI-Library-b23761a457154a6bb3e5b22478b283a3)

# Slide in animation

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8e2ac7d8-240d-4121-97ce-a9aae0df3323/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8e2ac7d8-240d-4121-97ce-a9aae0df3323/Untitled.png)

```swift
//
//  HeaderView.swift
//  Avocado
//
//  Created by paigeshin on 2021/02/16.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 6) {
                    Text("Avocado")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text("Avocadoes are a powerfulhouse ingredient at anyone.")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
```

# Dark Mode Test

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0974a055-7445-44a0-8481-fa4a0a0b6604/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0974a055-7445-44a0-8481-fa4a0a0b6604/Untitled.png)