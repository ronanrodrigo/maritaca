struct PlayerControlsViewModel {
    let addStationImageName: String = "plus.diamond.fill"
    let settingsImageName: String = "gearshape.fill"
    let mainButtonImageName: String
    let mainButtonAction: () -> ()
    
    private init(mainButtonImageName: String,
                 mainButtonAction: @escaping () -> ()) {
        self.mainButtonImageName = mainButtonImageName
        self.mainButtonAction = mainButtonAction
    }
}

extension PlayerControlsViewModel {
    static var playingViewModel: PlayerControlsViewModel {
        .init(mainButtonImageName: "stop.fill",
              mainButtonAction: { print("stop") })
    }

    static var stoppedViewModel: PlayerControlsViewModel {
        .init(mainButtonImageName: "play.fill",
              mainButtonAction: { print("play") })
    }
}
