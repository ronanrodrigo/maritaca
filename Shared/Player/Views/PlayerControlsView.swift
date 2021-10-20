import SwiftUI

struct PlayerControlsView: View {
    var playerControlsViewModel: PlayerControlsViewModel

    var body: some View {
        HStack {
            Button {
                playerControlsViewModel.mainButtonAction()
            } label: {
                Image(systemName: playerControlsViewModel.mainButtonImageName)
                    .imageScale(.large)
            }
            Spacer()
            Button {
                print("add")
            } label: {
                Image(systemName: playerControlsViewModel.addStationImageName)
                    .imageScale(.large)
            }
            Button {
                print("settings")
            } label: {
                Image(systemName: playerControlsViewModel.settingsImageName)
                    .imageScale(.large)
            }
        }
    }
}

struct PlayerControlsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerControlsView(playerControlsViewModel: .playingViewModel)
    }
}
