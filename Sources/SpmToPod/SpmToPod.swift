import SwiftUI
import Foundation

extension View {
    
    public func showImage() -> some View {
        Image("my_tree", bundle: ImageHelper.resolvedBundle)
            .frame(width: 200, height: 200)
        
    }
}
extension Bundle {
    static var modulee: Bundle = {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: SampleClass.self)
        #endif
    }()
}

class SampleClass {}
class ImageHelper {
    static var resolvedBundle: Bundle {
        #if SWIFT_PACKAGE
            print("it is spm")
            return Bundle.module
        #else
            print("it is not spm")
        return Bundle(for: ImageHelper.self)
        #endif
    }
    
//    static func image(_ name: String) -> UIImage? {
//        return UIImage(named: name,
//                       in: resolvedBundle,
//                       compatibleWith: nil)
//    }
}
