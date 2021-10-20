import SwiftUI

struct PlayerView: View {
    private let viewModel: PlayerViewModel

    init(viewModel: PlayerViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        GroupBox(label: Label(viewModel.station, systemImage: viewModel.antenaImageName)) {
            VStack(alignment: .leading, spacing: 20.0) {
                Text(viewModel.track).font(.callout)
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
        let viewModel = PlayerViewModel(station: "CBN Joinville",
                                        track: "CBN Diário")
        PlayerView(viewModel: viewModel)
    }
}
