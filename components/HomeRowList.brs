function createGamesCard()
    dim homeCardsDetails[0, 0]
    m.homeCardsDetails = homeCardsDetails
    homeCardsRowDetails = []
    homeCardsRowDetails.clear()
    m.homeGamesCardContent = createObject("roSGNode", "ContentNode")
    for i = 0 to 1
        if i = 0
            RowContent = m.homeGamesCardContent.createChild("ContentNode")
            RowContent.title = "Play Now"
            itemContent = RowContent.createChild("ContentNode")
            itemContent.HDPOSTERURL = "pkg:/images/Game0.png"
        else
            homeCardsRowDetails = []
            homeCardsRowDetails.clear()
            RowContent = m.homeGamesCardContent.createChild("ContentNode")
            RowContent.title = "Other Apps"
            for i = 1 to 13
                itemContent = RowContent.createChild("ContentNode")
                itemContent.HDPOSTERURL = "pkg:/images/Game" + i.toStr() + ".png"
            end for
        end if
    end for
    m.homeGamesRowList.content = m.homeGamesCardContent
    m.homeGamesRowScreen.visible = true
    m.gamesRowScreen.visible = true
    m.homeGamesRowList.setFocus(true)
end function

'Focus on the rowlist item
function onHomePageRowItemFocused()
    f = m.homeGamesRowList.rowItemFocused
    selectCardIndex = f[0]
    selectCardIndex1 = f[1]
    if selectCardIndex = 0 AND selectCardIndex1 = 0
        m.gamesFocusPoster.uri = "pkg:/images/GameBG0.png"
        m.gameDescriptionLabel.text = m.global.local.game0
        m.gameTitleLabel.text = "US Election Trivia"
    else
        if selectCardIndex1 = 0
            m.gameDescriptionLabel.text = m.global.local.game1
            m.gameTitleLabel.text = "Sphere Shuffle"
        else if selectCardIndex1 = 1
            m.gameDescriptionLabel.text = m.global.local.game2
            m.gameTitleLabel.text = "Verb Quest"
        else if selectCardIndex1 = 2
            m.gameDescriptionLabel.text = m.global.local.game3
            m.gameTitleLabel.text = "Memory Booster"
        else if selectCardIndex1 = 3
            m.gameDescriptionLabel.text = m.global.local.game4
            m.gameTitleLabel.text = "Skyward Frenzy"
        else if selectCardIndex1 = 4
            m.gameDescriptionLabel.text = m.global.local.game5
            m.gameTitleLabel.text = "Territory Protector"
        else if selectCardIndex1 = 5
            m.gameDescriptionLabel.text = m.global.local.game6
            m.gameTitleLabel.text = "Aqua Runner"
        else if selectCardIndex1 = 6
            m.gameDescriptionLabel.text = m.global.local.game7
            m.gameTitleLabel.text = "Basket Bonanza"
        else if selectCardIndex1 = 7
            m.gameDescriptionLabel.text = m.global.local.game8
            m.gameTitleLabel.text = "Tower Of Hanoi"
        else if selectCardIndex1 = 8
            m.gameDescriptionLabel.text = m.global.local.game9
            m.gameTitleLabel.text = "Buzzer Run"
        else if selectCardIndex1 = 9
            m.gameDescriptionLabel.text = m.global.local.game10
            m.gameTitleLabel.text = "Balls And Boxes"
        else if selectCardIndex1 = 10
            m.gameDescriptionLabel.text = m.global.local.game11
            m.gameTitleLabel.text = "Mineshaft"
        else if selectCardIndex1 = 11
            m.gameDescriptionLabel.text = m.global.local.game12
            m.gameTitleLabel.text = "Ball Breaker"
        else if selectCardIndex1 = 12
            m.gameDescriptionLabel.text = m.global.local.game13
            m.gameTitleLabel.text = "Tudip Studio"
        end if
            m.gamesFocusPoster.uri = "pkg:/images/GameBG" + (selectCardIndex1+1).toStr() + ".png"
    end if
end function

'Rowlist item select
function onHomePageRowItemSelected()
    f = m.homeGamesRowList.rowItemSelected
    selectCardIndex = f[0]
    selectCardIndex1 = f[1]
    if selectCardIndex = 0 AND selectCardIndex1 = 0
        ' showCategoriesList()
        ' m.homeGamesRowScreen.visible = false
        ' m.homeGamesRowList.setFocus(false)
        m.gamesRowScreen.visible = false
        m.homeGamesRowList.visible = false
        m.homeGamesRowList.setFocus(false)
        m.firstGroup.visible = true
        m.firstGroup.setFocus(true)
        playSound(1)
    end if
end function
