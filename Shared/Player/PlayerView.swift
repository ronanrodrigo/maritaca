import SwiftUI

struct PlayerView: View {
    var body: some View {
        GroupBox(label: Label("CBN Joinville", systemImage: "antenna.radiowaves.left.and.right")) {
            VStack(alignment: .leading, spacing: 20.0) {
                Text("CBN Diário").font(.callout)
                Divider()
                PlayerControlsView(playerControlsViewModel: .playingViewModel)
            }
            .cornerRadius(10)
            .padding(.vertical, 5)
        }
        .padding()
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
