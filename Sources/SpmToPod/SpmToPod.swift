import SwiftUI
import Foundation

@available(macOS 10.15, *)
extension View {
    
    public func showImage() -> some View {
        Image("my_tree")
            .frame(width: 200, height: 200)
    }
}
