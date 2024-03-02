import SwiftUI

extension View {
    
    public func showImage() -> some View {
        Image("my_tree")
            .frame(width: 200, height: 200)
    }
}
