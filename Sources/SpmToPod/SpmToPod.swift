import SwiftUI
import Foundation

extension View {
    
    public func showImage() -> some View {
        Image("my_tree", bundle: .module)
            .frame(width: 200, height: 200)
    }
}
