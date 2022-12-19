import Foundation
import SwiftUI

class IPhone1313ProTwelveViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var labelText: String = ""
    @Published var isValidLabelText: Bool = true
    @Published var labeloneText: String = ""
    @Published var isValidLabeloneText: Bool = true
}
