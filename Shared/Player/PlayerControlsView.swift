import SwiftUI

struct PlayerControlsViewModel {
    static var playingViewModel: PlayerControlsViewModel {
        .init(mainButtonIcon: Image(systemName: "stop.fill"),
              mainButtonAction: { print("stop") })
    }
    static var stoppedViewModel: PlayerControlsViewModel {
        .init(mainButtonIcon: Image(systemName: "play.fill"),
              mainButtonAction: { print("play") })
    }
    let mainButtonIcon: Image
    let mainButtonAction: () -> ()
    
    private init(mainButtonIcon: Image,
                 mainButtonAction: @escaping () -> ()) {
        self.mainButtonIcon = mainButtonIcon
        self.mainButtonAction = mainButtonAction
    }
}

struct PlayerControlsView: View {
    var playerControlsViewModel: PlayerControlsViewModel

    var body: some View {
        HStack {
            Button {
                playerControlsViewModel.mainButtonAction()
            } label: {
                playerControlsViewModel.mainButtonIcon
                    .imageScale(.large)
            }
            Spacer()
            Button {
                print("add")
            } label: {
                Image(systemName: "plus.diamond.fill")
                    .imageScale(.large)
            }
            Button {
                print("settings")
            } label: {
                Image(systemName: "gearshape.fill")
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
