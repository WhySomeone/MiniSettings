<img src="https://i.ibb.co/bJk98y3/Hello.png" alt="Someone" width="100%">

# MiniSettings

##  How to Use

1. import MiniSettings
```Swift
import SwiftUI
import MiniSettings
```

2.

```Swift
 .fullScreenCover(isPresented: $showMe, content: {
            MiniSettings(HelloFriend: $showMe)
        })
```

3. Example

```Swift
import SwiftUI
import MiniSettings

struct ContentView: View {
    @State private var showMe = false
    var body: some View {
        Button("Show") {
            showMe.toggle()
        }
        .fullScreenCover(isPresented: $showMe, content: {
            MiniSettings(HelloFriend: $showMe)
        })
    }
}
```

## Custom MiniSettings

1. CheckBox
```Swift
CheckBoxView(isChecked: $CheckXD)
```

2. CustomSlider
```Swift
CustomSlider(value: $slider123)
```
