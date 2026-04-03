import SwiftUI

struct OverView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("TraTo")
                .font(.largeTitle)
                .bold()
            Text("Welcome — this is a minimal starter app.")
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

struct OverView_Previews: PreviewProvider {
    static var previews: some View {
        OverView()
    }
}
