sub init()
    m.firstGroup = m.top.findNode("firstGroup")
    m.firstGroup.setFocus(true)
    m.secondGroup = m.top.findNode("secondGroup")
    m.char1 = m.top.findNode("char1")
    m.char2 = m.top.findNode("char2")
    m.char3 = m.top.findNode("char3")
    m.char4 = m.top.findNode("char4")
    m.questLine = m.top.findNode ("questLine")
    m.questLabel = m.top.findNode ("questLabel")
    m.option1 = m.top.findNode("option1")
    m.option2 = m.top.findNode("option2")
    m.option3 = m.top.findNode("option3")
    m.option4 = m.top.findNode("option4")
    m.button1 = m.top.findNode("button1")
    m.button2 = m.top.findNode("button2")
    m.button3 = m.top.findNode("button3")
    m.button4 = m.top.findNode("button4")
    m.option1Focus = m.top.findNode("option1Focus")
    m.option2Focus = m.top.findNode("option2Focus")
    m.option3Focus = m.top.findNode("option3Focus")
    m.option4Focus = m.top.findNode("option4Focus")
    m.thirdGroup = m.top.findNode("thirdGroup")
    m.numScore = m.top.findNode("numScore")
    m.replayYes = m.top.findNode("replayYes")
    m.replayNo = m.top.findNode("replayNo")
    m.validationText = m.top.findNode("validationText")
    m.option1Rect = m.top.findNode("option1Rect")
    m.option2Rect = m.top.findNode("option2Rect")
    m.option3Rect = m.top.findNode("option3Rect")
    m.option4Rect = m.top.findNode("option4Rect")
    m.quesNumber = m.top.findNode("quesNumber")
    m.quesTag = m.top.findNode("quesTag")
    m.timeUpLabel = m.top.findNode("timeUpLabel")
    m.gameOverLabel = m.top.findNode("gameOverLabel")
    m.lvlsGroup = m.top.findNode("lvlsGroup")
    m.unlockLevelTimer = m.top.findNode("unlockLevelTimer")
    m.unlockLevelTimer.observeField("fire", "unlockLevelTimerStatus")
    m.levelIcon = m.top.findNode("levelIcon")
    m.replayLabel = m.top.findNode("replayLabel")
    m.nextLevelOpen = m.top.findNode("nextLevelOpen")
    m.modeSelect = m.top.findNode("modeSelect")
    m.mode1Label = m.top.findNode("mode1Label")
    m.mode2Label = m.top.findNode("mode2Label")
    m.emptyBar = m.top.findNode("emptyBar")
    m.filledProgress = m.top.findNode("filledProgress")
    m.countPercentageBarLabel = m.top.findNode("countPercentageBarLabel")
    m.gameOverLabel1 = m.top.findNode("gameOverLabel1")
    m.gameEndMode1 = m.top.findNode("gameEndMode1")

    m.dummyArray=[]

    m.transX=173
    m.transY=100
    m.star1TransX=170
    m.star1TransY=65
    m.star2TransX=200
    m.star2TransY=65
    m.star3TransX=230
    m.star3TransY=65

    for i=1 to 20

        m.emptyStar1 = createObject("roSGNode","poster")
        m.emptyStar1.id="emptyStar1"+i.toStr()+"1"
        m.emptyStar1.height = 25
        m.emptyStar1.width = 26
        m.emptyStar1.uri = "pkg:/images/emptyStar.png"
        m.emptyStar1.visible = true
        m.emptyStar1.translation=[m.star1TransX,m.star1TransY]

        m.emptyStar2 = createObject("roSGNode","poster")
        m.emptyStar2.id="emptyStar2"+i.toStr()+"1"
        m.emptyStar2.height = 25
        m.emptyStar2.width = 26
        m.emptyStar2.uri = "pkg:/images/emptyStar.png"
        m.emptyStar2.visible = true
        m.emptyStar2.translation=[m.star2TransX,m.star2TransY]

        m.emptyStar3 = createObject("roSGNode","poster")
        m.emptyStar3.id="emptyStar3"+i.toStr()+"1"
        m.emptyStar3.height = 25
        m.emptyStar3.width = 26
        m.emptyStar3.uri = "pkg:/images/emptyStar.png"
        m.emptyStar3.visible = true
        m.emptyStar3.translation=[m.star3TransX,m.star3TransY]

        m.star1 = createObject("roSGNode","poster")
        m.star1.id="star"+i.toStr()+"1"
        m.star1.height = 25
        m.star1.width = 26
        m.star1.uri = "pkg:/images/star.png"
        m.star1.visible = false
        m.star1.translation=[m.star1TransX,m.star1TransY]

        m.star2 = createObject("roSGNode","poster")
        m.star2.id="star"+i.toStr()+"2"
        m.star2.height = 25
        m.star2.width = 26
        m.star2.uri = "pkg:/images/star.png"
        m.star2.visible = false
        m.star2.translation=[m.star2TransX,m.star2TransY]

        m.star3 = createObject("roSGNode","poster")
        m.star3.id="star"+i.toStr()+"3"
        m.star3.height = 25
        m.star3.width = 26
        m.star3.uri = "pkg:/images/star.png"
        m.star3.visible = false
        m.star3.translation=[m.star3TransX,m.star3TransY]

        m.p=createObject("roSGNode","poster")
        m.p.id="lvl"+i.toStr()
        m.p.width=80
        m.p.height=80
        m.p.uri="pkg:/images/lvlBox.png"
        m.p.translation=[m.transX,m.transY]

        m.lab=CreateObject("roSGNode","label")
        m.lab.id="lvl"+i.toStr()+"Text"
        m.lab.width=80
        m.lab.height=80
        m.lab.horizAlign="center"
        m.lab.vertAlign="center"
        m.lab.text=i.toStr()
        m.lab.translation=[0,0]

        m.quesMark=CreateObject("roSGNode","poster")
        m.quesMark.id = "lvlPos"+i.toStr()
        m.quesMark.inheritParentOpacity=false
        m.quesMark.height=60
        m.quesMark.width=61
        m.quesMark.visible= false
        m.quesMark.translation=[10,6.7]
        m.quesMark.uri="pkg:/images/questMark.png"

        m.openLock=CreateObject("roSGNode","poster")
        m.openLock.id = "unlock"+i.toStr()
        m.openLock.inheritParentOpacity=false
        m.openLock.height=60
        m.openLock.width=61
        m.openLock.visible = false
        m.openLock.translation=[10,6.7]
        m.openLock.uri="pkg:/images/unlock.png"

        if (i>1)
            m.lab.appendChild(m.quesMark)
            m.lab.appendChild(m.openLock)
            m.p.opacity = 0.5
        end if

        m.star1.appendChild(m.p)
        m.p.appendChild(m.lab)
        m.lvlsGroup.appendChild(m.p)
        m.lvlsGroup.appendChild(m.star1)
        m.lvlsGroup.appendChild(m.star2)
        m.lvlsGroup.appendChild(m.star3)
        m.lvlsGroup.appendChild(m.emptyStar1)
        m.lvlsGroup.appendChild(m.emptyStar2)
        m.lvlsGroup.appendChild(m.emptyStar3)

        m.transX+=200
        m.star1TransX+=200
        m.star2TransX+=200
        m.star3TransX+=200
        if (i mod 5 = 0)
            m.transY+= 150
            m.transX=173

            m.star1TransY+=150
            m.star1TransX=170

            m.star2TransY+=150
            m.star2TransX=200

            m.star3TransY+=150
            m.star3TransX=230
        end if

        m.countPercentageBar = 0
    end for

    m.unlock2 = m.top.findNode("unlock2")
    m.unlock3 = m.top.findNode("unlock3")
    m.unlock4 = m.top.findNode("unlock4")
    m.unlock5 = m.top.findNode("unlock5")
    m.unlock6 = m.top.findNode("unlock6")
    m.unlock7 = m.top.findNode("unlock7")
    m.unlock8 = m.top.findNode("unlock8")
    m.unlock9 = m.top.findNode("unlock9")
    m.unlock10 = m.top.findNode("unlock10")
    m.unlock11 = m.top.findNode("unlock11")
    m.unlock12 = m.top.findNode("unlock12")
    m.unlock13 = m.top.findNode("unlock13")
    m.unlock14 = m.top.findNode("unlock14")
    m.unlock15 = m.top.findNode("unlock15")
    m.unlock16 = m.top.findNode("unlock16")
    m.unlock17 = m.top.findNode("unlock17")
    m.unlock18 = m.top.findNode("unlock18")
    m.unlock19 = m.top.findNode("unlock19")
    m.unlock20 = m.top.findNode("unlock20")

    m.star11 = m.top.findNode("star11")
    m.star12 = m.top.findNode("star12")
    m.star13 = m.top.findNode("star13")
    m.star21 = m.top.findNode("star21")
    m.star22 = m.top.findNode("star22")
    m.star23 = m.top.findNode("star23")
    m.star31 = m.top.findNode("star31")
    m.star32 = m.top.findNode("star32")
    m.star33 = m.top.findNode("star33")
    m.star41 = m.top.findNode("star41")
    m.star42 = m.top.findNode("star42")
    m.star43 = m.top.findNode("star43")
    m.star51 = m.top.findNode("star51")
    m.star52 = m.top.findNode("star52")
    m.star53 = m.top.findNode("star53")
    m.star61 = m.top.findNode("star61")
    m.star62 = m.top.findNode("star62")
    m.star63 = m.top.findNode("star63")
    m.star71 = m.top.findNode("star71")
    m.star72 = m.top.findNode("star72")
    m.star73 = m.top.findNode("star73")
    m.star81 = m.top.findNode("star81")
    m.star82 = m.top.findNode("star82")
    m.star83 = m.top.findNode("star83")
    m.star91 = m.top.findNode("star91")
    m.star92 = m.top.findNode("star92")
    m.star93 = m.top.findNode("star93")
    m.star101 = m.top.findNode("star101")
    m.star102 = m.top.findNode("star102")
    m.star103 = m.top.findNode("star103")
    m.star111 = m.top.findNode("star111")
    m.star112 = m.top.findNode("star112")
    m.star113 = m.top.findNode("star113")
    m.star121 = m.top.findNode("star121")
    m.star122 = m.top.findNode("star122")
    m.star123 = m.top.findNode("star123")
    m.star131 = m.top.findNode("star131")
    m.star132 = m.top.findNode("star132")
    m.star133 = m.top.findNode("star133")
    m.star141 = m.top.findNode("star141")
    m.star142 = m.top.findNode("star142")
    m.star143 = m.top.findNode("star143")
    m.star151 = m.top.findNode("star151")
    m.star152 = m.top.findNode("star152")
    m.star153 = m.top.findNode("star153")
    m.star161 = m.top.findNode("star161")
    m.star162 = m.top.findNode("star162")
    m.star163 = m.top.findNode("star163")
    m.star171 = m.top.findNode("star171")
    m.star172 = m.top.findNode("star172")
    m.star173 = m.top.findNode("star173")
    m.star181 = m.top.findNode("star181")
    m.star182 = m.top.findNode("star182")
    m.star183 = m.top.findNode("star183")
    m.star191 = m.top.findNode("star191")
    m.star192 = m.top.findNode("star192")
    m.star193 = m.top.findNode("star193")
    m.star201 = m.top.findNode("star201")
    m.star202 = m.top.findNode("star202")
    m.star203 = m.top.findNode("star203")

    m.lvl1 = m.top.findNode("lvl1")
    m.lvl2 = m.top.findNode("lvl2")
    m.lvl3 = m.top.findNode("lvl3")
    m.lvl4 = m.top.findNode("lvl4")
    m.lvl5 = m.top.findNode("lvl5")
    m.lvl6 = m.top.findNode("lvl6")
    m.lvl7 = m.top.findNode("lvl7")
    m.lvl8 = m.top.findNode("lvl8")
    m.lvl9 = m.top.findNode("lvl9")
    m.lvl10 = m.top.findNode("lvl10")
    m.lvl11 = m.top.findNode("lvl11")
    m.lvl12 = m.top.findNode("lvl12")
    m.lvl13 = m.top.findNode("lvl13")
    m.lvl14 = m.top.findNode("lvl14")
    m.lvl15 = m.top.findNode("lvl15")
    m.lvl16 = m.top.findNode("lvl16")
    m.lvl17 = m.top.findNode("lvl17")
    m.lvl18 = m.top.findNode("lvl18")
    m.lvl19 = m.top.findNode("lvl19")
    m.lvl20 = m.top.findNode("lvl20")
    m.lvlPos2 = m.top.findNode("lvlPos2")
    m.lvlPos3 = m.top.findNode("lvlPos3")
    m.lvlPos4 = m.top.findNode("lvlPos4")
    m.lvlPos5 = m.top.findNode("lvlPos5")
    m.lvlPos6 = m.top.findNode("lvlPos6")
    m.lvlPos7 = m.top.findNode("lvlPos7")
    m.lvlPos8 = m.top.findNode("lvlPos8")
    m.lvlPos9 = m.top.findNode("lvlPos9")
    m.lvlPos10 = m.top.findNode("lvlPos10")
    m.lvlPos11 = m.top.findNode("lvlPos11")
    m.lvlPos12 = m.top.findNode("lvlPos12")
    m.lvlPos13 = m.top.findNode("lvlPos13")
    m.lvlPos14 = m.top.findNode("lvlPos14")
    m.lvlPos15 = m.top.findNode("lvlPos15")
    m.lvlPos16 = m.top.findNode("lvlPos16")
    m.lvlPos17 = m.top.findNode("lvlPos17")
    m.lvlPos18 = m.top.findNode("lvlPos18")
    m.lvlPos19 = m.top.findNode("lvlPos19")
    m.lvlPos20 = m.top.findNode("lvlPos20")
    m.currentLevel = 1

    m.flag = 0
    m.countQues = 2
    m.score = 0
    m.quesNum = 0

    m.tim = createObject("roSGNode","Timer")
    m.tim.id = "tim1"
    m.tim.duration = "2"
    m.tim.observeField("fire","showQues")
    m.top.appendChild(m.tim)

    m.timPop = createObject("roSGNode","Timer")
    m.timPop.id = "tim1"
    m.timPop.duration = "2"
    m.timPop.observeField("fire","popUp")
    m.top.appendChild(m.timPop)

    ' For rowlist
    m.gamesRowScreen = m.top.findNode("gamesRowScreen")
    m.homeGamesRowScreen = m.top.findNode("homeGamesRowScreen")
    m.homeGamesRowList = m.homeGamesRowScreen.findNode("homeGamesRowList")
    m.gamesRowScreen.visible = true
    m.homeGamesRowList.visible = true
    m.homeGamesRowList.setFocus(true)

    m.gamesFocusPoster = m.top.findNode("gamesFocusPoster")
    m.tudip_logo = m.top.findNode("tudip_logo")
    m.gameTitleLabel = m.top.findNode("gameTitleLabel")
    m.gameDescriptionLabel = m.top.findNode("gameDescriptionLabel")
    m.aboutgameStatsScreen = m.top.findNode("aboutgameStatsScreen")
    m.gameVersion = m.top.findNode("gameVersion")
    m.aboutButton = m.top.findNode("aboutButton")
    m.copyRightFirstText = m.top.findNode("copyRightFirstText")
    m.copyRightSecondText = m.top.findNode("copyRightSecondText")
    m.privacyAndPolicy= m.top.findNode("privacyAndPolicy")
    m.aboutUsText = m.top.findNode("aboutUsText")
    m.popUpBackGround = m.top.findNode("popUpBackGround")
    m.gameTimerLabel = m.top.findNode("gameTimerLabel")

    m.tudip_logo = m.top.findNode("tudip_logo")
    m.gameTitleLabel = m.top.findNode("gameTitleLabel")
    m.gameDescriptionLabel = m.top.findNode("gameDescriptionLabel")
    m.aboutButton = m.top.findNode("aboutButton")
    createGamesCard()

    'Audio variables
    m.backgroundMusic = m.top.findNode("backgroundMusic")
    audioContent = createObject("roSGNode","contentNode")
    audioContent.url = "pkg:/sounds/BGmusic.mp3"
    m.backgroundMusic.loop = true
    m.backgroundMusic.control = "prebuffer"
    m.backgroundMusic.content = audioContent
    m.top.appendChild(m.backgroundMusic)

    m.sound = m.top.findNode("gameSounds")

    m.minutes = 2
    m.seconds = 60
    m.gameTimer = createObject("roSGNode","Timer")
    m.gameTimer.duration = "1"
    m.gameTimer.repeat = "true"
    m.gameTimer.observeField("fire","updateTimer")
    m.top.appendChild(m.gameTimer)
    m.dummy=0

    m.mode1BackFlag = false

    m.correctAnswerCount = 0
end sub

' reset game time
function resetGameTime()
    m.minutes = 2
    m.seconds = 60
end function

' game timer
function updateTimer()
    m.seconds--
    tmpString=""
    if m.seconds = 0
        m.minutes--
        m.seconds = 59
    end if
    if (Len(m.minutes.toStr())=1)
        tmpString="0"
    end if
    tmpString+=m.minutes.toStr()
    tmpString+=":"
    if (Len(m.seconds.toStr())=1)
        tmpString+="0"
    end if
    tmpString+=m.seconds.toStr()
    if m.minutes<0
        print "entered the "
        tmpString="00:00"
        m.gameTimer.control = "stop"
        m.gameOverLabel.visible = false
        m.timeUpLabel.visible = true
        m.gameOverLabel1.visible = false
        popUp()
    end if
    m.gameTimerLabel.text = tmpString
end function

'question display
function showQues()
    m.gameTimer.control = "start"
    m.gameTimerLabel.visible = true
    m.backgroundMusic.control = "resume"
    m.quesTag.visible = true
    m.quesNumber.visible = true
    m.quesNum = m.quesNum + 1
    m.quesNumber.text = m.quesNum

    m.validationText.visible = false
    m.option1Rect.visible = true
    m.option2Rect.visible = true
    m.option3Rect.visible = true
    m.option4Rect.visible = true
    m.questLabel.color = "#FFFFFF"
    m.questLabel.visible = true

    while true
        m.index = Rnd(245)
        indexFound=false
        for each ele in m.dummyArray
            if (ele=m.index) indexFound=true
        end for
        if (indexFound=true) continue while
        m.dummyArray.push(m.index)
        if (m.countQues=20) m.dummyArray.clear()
        exit while
    end while

    m.opt1 = m.global.myArray[m.index].choices[0]
    m.opt2 = m.global.myArray[m.index].choices[1]
    m.opt3 = m.global.myArray[m.index].choices[2]
    m.opt4 = m.global.myArray[m.index].choices[3]
    m.ans = m.global.myArray[m.index].correct_answer

    m.questLabel.text = m.global.myArray[m.index].question
    m.option1.text = m.global.myArray[m.index].choices[0]
    m.option2.text = m.global.myArray[m.index].choices[1]
    m.option3.text = m.global.myArray[m.index].choices[2]
    m.option4.text = m.global.myArray[m.index].choices[3]

    resetUi()

    m.tim.control = "stop"
    m.option2Focus.visible = false
    m.option3Focus.visible = false
    m.option4Focus.visible = false
    m.option1Focus.visible = true
    m.char1.opacity = 1
end function

' remove otions after answer
function removeOption()
    m.gameTimerLabel.visible = false
    m.questLabel.visible = false
    m.option1Rect.visible = false
    m.option2Rect.visible = false
    m.option3Rect.visible = false
    m.option4Rect.visible = false
    m.quesNumber.visible = false
    m.quesTag.visible = false
end function

' visible of correct/incorrect
function handleAnswer(color as string,answer as string)
    m.gameTimer.control = "stop"
    m.validationText.color = color
    m.validationText.text = answer
    m.validationText.visible = true
    removeOption()
end function

'reset the level
function resetLevel()
    m.currentLevel = 1
    m.lvl1.opacity = 1
    for i=2 to 20
        m["lvlPos"+i.toStr()].visible=true
        m["lvl"+i.toStr()].opacity = 0.5
    end for

    for i=1 to 20
        for j=1 to 3
            m["star"+i.toStr()+j.toStr()].visible=false
        end for
    end for
end function

' pop-Up after game-over
function popUp()
    if m.minutes<=1
        print "hello"
        m.timeUpLabel.visible = true
        m.gameOverLabel.visible= false
    end if

    if m.minutes>0
        if (m.lvl1.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl2.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl3.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl4.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl5.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl6.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl7.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl8.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl9.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl10.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl11.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl12.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl13.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl14.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl15.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl16.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl17.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl18.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl19.opacity = 1 AND m.score<120)
            m.gameOverLabel.visible = true
            m.nextLevelOpen.visible = "false"
        else if (m.lvl20.opacity = 1 AND m.score>=120)
            m.gameOverLabel.visible = true
        end if
    end if

    if m.mode2Label.opacity = true
        if m.minutes<0
            m.nextLevelOpen.visible = false
        end if
    end if

    if m.mode1Label.opacity = true
        m.nextLevelOpen.visible = false
        if m.minutes>0
            m.gameEndMode1.visible = true
        else if m.minutes <0
            m.gameEndMode1.visible = false
        end if
    else if m.mode2Label.opacity = true
        m.gameEndMode1.visible = false
    end if

    m.dummy=0
    resetGameTime()
    m.gameTimer.control = "stop"
    playSound(4)
    m.backgroundMusic.control = "stop"
    m.secondGroup.setFocus(false)
    m.secondGroup.visible = false
    m.popUpBackGround.visible = true
    m.thirdGroup.visible = true
    m.thirdGroup.setFocus(true)
    m.numScore.text = m.score
    m.quesNum = 0
    m.timPop.control = "stop"

    m.countPercentageBar=0
    m.countPercentageBarLabel.text = "0%"
    m.filledProgress.width = 0.0001
end function

function onKeyEvent(key as string, press as Boolean) as Boolean
    if (key = "options")
        m.homeGamesRowList.setFocus(false)
        m.aboutgameStatsScreen.visible = true
        m.aboutgameStatsScreen.setFocus(true)
        m.gameVersion.text = "Version: 1.0.0"
        m.copyRightFirstText.text = "Copyright"
        m.copyRightSecondText.text = "2024 by Tudip Technologies."
        m.privacyAndPolicy.text = "Privacy Policy - www.tudip.com/privacy-policy"
        m.aboutUsText.text = "Contact Us: info@tudip.com"
        return true
    end if
    if press = true
        if key = "OK"
            if m.firstGroup.visible = true
                m.firstGroup.visible = false
                m.firstGroup.setFocus(false)
                m.modeSelect.visible = true
                m.modeSelect.setFocus(true)
            else if (m.modeSelect.visible = true)
                if (m.mode2Label.opacity = 1)
                    m.gameOverLabel1.visible = false
                    m.modeSelect.visible = false
                    m.modeSelect.setFocus(false)
                    m.emptyBar.visible = true
                    m.countPercentageBarLabel.visible = true
                    m.lvlsGroup.visible = true
                    m.lvlsGroup.setFocus(true)
                    'mode 1 select
                else if (m.mode1Label.opacity = 1)

                    print "mode 1 select"
                    m.gameOverLabel.visible = false

                    m.nextLevelOpen.visible = false
                    m.gameOverLabel.visible=true
                   ' m.gameOverLabel1.visible = true
                    m.mode1BackFlag = true
                    m.modeSelect.visible = false
                    m.modeSelect.setFocus(false)
                    m.secondGroup.visible = true
                    m.secondGroup.setFocus(true)
                    m.emptyBar.visible = false
                    m.countPercentageBarLabel.visible = false
                    showQues()
                    play()
                    m.gameTimer.control = "start"
                end if
            else if m.lvlsGroup.visible = true
                    m.filledProgress.width = 0.0001
                    m.lvlsGroup.visible = false
                    m.lvlsGroup.setFocus(false)
                    m.secondGroup.visible = true
                    m.secondGroup.setFocus(true)
                    showQues()
                    play()
                    m.gameTimer.control = "start"
            else if m.secondGroup.visible = true
                if m.char1.opacity = 1 AND m.gameTimer.control = "start"
                    if m.opt1 = m.ans
                        m.countPercentageBar +=5
                        m.filledProgress.width +=10
                        m.countPercentageBarLabel.text = m.countPercentageBar.toStr() + "%"
                        m.char1.uri = "pkg:/images/option1Correct.png"
                        m.score = m.score + 10
                        handleAnswer("#00FF00","Correct")
                        m.backgroundMusic.control = "pause"
                        playSound(2)
                        m.correctAnswerCount+=1

                    else
                        m.char1.uri = "pkg:/images/option1Incorrect.png"
                        handleAnswer("&hFF0000","Incorrect")
                        m.backgroundMusic.control = "pause"
                        playSound(3)
                    end if
                    if m.countQues <= m.global.quesLimit
                        m.tim.control = "start"
                    else if m.countQues > m.global.quesLimit
                        m.timeUpLabel.visible = "false"
                        m.timPop.control = "start"
                    end if
                    Play()
                    m.countQues = m.countQues + 1
                else if m.char2.opacity = 1 AND m.gameTimer.control = "start"
                    if m.opt2 = m.ans
                        m.countPercentageBar +=5
                        m.filledProgress.width +=10
                        m.countPercentageBarLabel.text = m.countPercentageBar.toStr() + "%"
                        m.char2.uri = "pkg:/images/option2Correct.png"
                        m.score = m.score + 10
                        handleAnswer("#00FF00","Correct")
                        m.backgroundMusic.control = "pause"
                        playSound(2)
                        m.correctAnswerCount+=1
                    else
                        m.char2.uri = "pkg:/images/option2Incorrect.png"
                        handleAnswer("&hFF0000","Incorrect")
                        m.backgroundMusic.control = "pause"
                        playSound(3)
                    end if
                    if m.countQues <= m.global.quesLimit
                        m.tim.control = "start"
                    else if m.countQues > m.global.quesLimit
                        m.timeUpLabel.visible = "false"
                        m.timPop.control = "start"
                    end if
                    Play()
                    m.countQues = m.countQues + 1
                else if m.char3.opacity = 1 AND m.gameTimer.control = "start"
                    if m.opt3 = m.ans
                        m.countPercentageBar +=5
                        m.filledProgress.width +=10
                        m.countPercentageBarLabel.text = m.countPercentageBar.toStr() + "%"
                        m.char3.uri = "pkg:/images/option3Correct.png"
                        m.score = m.score + 10
                        handleAnswer("#00FF00","Correct")
                        m.backgroundMusic.control = "pause"
                        playSound(2)
                        m.correctAnswerCount+=1
                    else
                        m.char3.uri = "pkg:/images/option3Incorrect.png"
                        handleAnswer("&hFF0000","Incorrect")
                        m.backgroundMusic.control = "pause"
                        playSound(3)
                    end if
                    if m.countQues <= m.global.quesLimit
                        m.tim.control = "start"
                    else if m.countQues > m.global.quesLimit
                        m.timeUpLabel.visible = "false"
                        m.timPop.control = "start"
                    end if
                    Play()
                    m.countQues = m.countQues + 1
                else if m.char4.opacity = 1 AND m.gameTimer.control = "start"
                    if m.opt4 = m.ans
                        m.countPercentageBar +=5
                        m.filledProgress.width +=10
                        m.countPercentageBarLabel.text = m.countPercentageBar.toStr() + "%"
                        m.char4.uri = "pkg:/images/option4Correct.png"
                        m.score = m.score + 10
                        handleAnswer("#00FF00","Correct")
                        m.backgroundMusic.control = "pause"
                        playSound(2)
                        m.correctAnswerCount+=1
                    else
                        m.char4.uri = "pkg:/images/option4Incorrect.png"
                        handleAnswer("&hFF0000","Incorrect")
                        m.backgroundMusic.control = "pause"
                        playSound(3)
                    end if
                    if m.countQues <= m.global.quesLimit
                        m.tim.control = "start"
                    else if m.countQues > m.global.quesLimit
                        m.timeUpLabel.visible = "false"
                        m.timPop.control = "start"
                    end if
                    Play()
                    m.countQues = m.countQues + 1
                end if
            else if m.thirdGroup.visible = true
                m.countPercentageBar=0
                if m.replayYes.opacity = 1
                    m.countQues = 2
                    showQues()
                    resetUi()
                    m.thirdGroup.visible = false
                    m.thirdGroup.setFocus(false)
                    m.secondGroup.visible = true
                    m.secondGroup.setFocus(true)
                    m.score = 0
                    m.countPercentageBar=0
                    m.countPercentageBarLabel.text = "0%"
                    m.unlockLevelTimer.control = "start"
                else if m.replayNo.opacity = 1
                    m.countQues = 2
                    m.thirdGroup.visible = false
                    m.thirdGroup.setFocus(false)
                    m.countPercentageBar=0
                    m.countPercentageBarLabel.text = "0%"
                    m.unlockLevelTimer.control = "start"

                    ' mode screen on back
                    if (m.mode1Label.opacity = 1 AND m.mode2Label.opacity = 0.5)
                        m.modeSelect.visible = true
                        m.modeSelect.setFocus(true)
                    else if (m.mode2Label.opacity = 1 AND m.mode1Label.opacity = 0.5)
                        m.lvlsGroup.visible = true
                        m.lvlsGroup.setFocus(true)
                    end if
                    m.score = 0
                    m.gameTimer.control = "stop"
                end if
            end if
                if (m.countQues=22)
                    ' if  m.currentLevel=1 AND m.lvl1.opacity = 1
                   if m.lvl1.opacity = 1
                        if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            if (m.mode2Label.opacity = true )
                                m.nextLevelOpen.visible = true
                            end if
                            m.lvlPos2.visible = false
                            m.star11.visible = true
                            m.unlock2.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star11.visible = true
                            m.star12.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos2.visible = false
                            m.unlock2.visible = true
                        else if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star11.visible = true
                            m.star12.visible = true
                            m.star13.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos2.visible = false
                            m.unlock2.visible = true
                        end if
                       ' m.countQues=22
                    else if m.lvl2.opacity =1
                            m.currentLevel = 2
                            if m.score>=200
                                m.gameOverLabel.visible = false
                                m.star21.visible = true
                                m.star22.visible = true
                                m.star23.visible = true
                                m.nextLevelOpen.visible = true
                                m.lvlPos3.visible = false
                                m.unlock3.visible = true
                            else if m.score>=160 AND m.score<200
                                m.gameOverLabel.visible = false
                                m.star21.visible = true
                                m.star22.visible = true
                                m.nextLevelOpen.visible = true
                                m.lvlPos3.visible = false
                                m.unlock3.visible = true
                            else if m.score >= 120 AND m.score<160
                                m.gameOverLabel.visible = false
                                m.nextLevelOpen.visible = true
                                m.lvlPos3.visible = false
                                m.star21.visible = true
                                m.unlock3.visible = true
                            end if
                    else if m.lvl3.opacity =1
                        m.currentLevel = 3
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star31.visible = true
                            m.star32.visible = true
                            m.star33.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos4.visible = false
                            m.unlock4.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star31.visible = true
                            m.star32.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos4.visible = false
                            m.unlock4.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos4.visible = false
                            m.star31.visible = true
                            m.unlock4.visible = true
                        end if
                    else if m.lvl4.opacity =1
                        m.currentLevel = 4
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star41.visible = true
                            m.star42.visible = true
                            m.star43.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos5.visible = false
                            m.unlock5.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star41.visible = true
                            m.star42.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos5.visible = false
                            m.unlock5.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos5.visible = false
                            m.star41.visible = true
                            m.unlock5.visible = true
                        end if
                    else if m.lvl5.opacity =1
                        m.currentLevel = 5
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star51.visible = true
                            m.star52.visible = true
                            m.star53.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos6.visible = false
                            m.unlock6.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star51.visible = true
                            m.star52.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos6.visible = false
                            m.unlock6.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos6.visible = false
                            m.star51.visible = true
                            m.unlock6.visible = true
                        end if
                    else if m.lvl6.opacity =1
                        m.currentLevel = 6
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star61.visible = true
                            m.star62.visible = true
                            m.star63.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos7.visible = false
                            m.unlock7.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star61.visible = true
                            m.star62.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos7.visible = false
                            m.unlock7.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos7.visible = false
                            m.star61.visible = true
                            m.unlock7.visible = true
                        end if
                    else if m.lvl7.opacity =1
                        m.currentLevel = 7
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star71.visible = true
                            m.star72.visible = true
                            m.star73.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos8.visible = false
                            m.unlock8.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star71.visible = true
                            m.star72.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos8.visible = false
                            m.unlock8.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos8.visible = false
                            m.star71.visible = true
                            m.unlock8.visible = true
                        end if

                    else if m.lvl8.opacity =1
                        m.currentLevel = 8
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star81.visible = true
                            m.star82.visible = true
                            m.star83.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos9.visible = false
                            m.unlock9.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star81.visible = true
                            m.star82.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos9.visible = false
                            m.unlock9.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos9.visible = false
                            m.star81.visible = true
                            m.unlock9.visible = true
                        end if

                    else if m.lvl9.opacity =1
                        m.currentLevel = 9

                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star91.visible = true
                            m.star92.visible = true
                            m.star93.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos10.visible = false
                            m.unlock10.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star91.visible = true
                            m.star92.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos10.visible = false
                            m.unlock10.visible = true
                        else if  m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos10.visible = false
                            m.star91.visible = true
                            m.unlock10.visible = true
                        end if
                    else if m.lvl10.opacity =1
                        m.currentLevel = 10
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star101.visible = true
                            m.star102.visible = true
                            m.star103.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos11.visible = false
                            m.unlock11.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star101.visible = true
                            m.star102.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos11.visible = false
                            m.unlock11.visible = true
                        else if  m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos11.visible = false
                            m.star101.visible = true
                            m.unlock11.visible = true
                        end if
                    else if m.lvl11.opacity =1
                        m.currentLevel = 11
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star111.visible = true
                            m.star112.visible = true
                            m.star113.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos12.visible = false
                            m.unlock12.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star111.visible = true
                            m.star112.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos12.visible = false
                            m.unlock12.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos12.visible = false
                            m.star111.visible = true
                            m.unlock12.visible = true
                        end if
                    else if m.lvl12.opacity =1
                        m.currentLevel = 12
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star121.visible = true
                            m.star122.visible = true
                            m.star123.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos13.visible = false
                            m.unlock13.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star121.visible = true
                            m.star122.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos13.visible = false
                            m.unlock13.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos13.visible = false
                            m.star121.visible = true
                            m.unlock13.visible = true
                        end if

                    else if m.lvl13.opacity =1
                        m.currentLevel = 13
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star131.visible = true
                            m.star132.visible = true
                            m.star133.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos14.visible = false
                            m.unlock14.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star131.visible = true
                            m.star132.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos14.visible = false
                            m.unlock14.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos14.visible = false
                            m.star131.visible = true
                            m.unlock14.visible = true
                        end if
                    else if m.lvl14.opacity =1
                        m.currentLevel = 14
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star141.visible = true
                            m.star142.visible = true
                            m.star143.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos15.visible = false
                            m.unlock15.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star141.visible = true
                            m.star142.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos15.visible = false
                            m.unlock15.visible = true
                        else if  m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos15.visible = false
                            m.star141.visible = true
                            m.unlock15.visible = true
                        end if
                    else if m.lvl15.opacity =1
                        m.currentLevel = 15
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star151.visible = true
                            m.star152.visible = true
                            m.star153.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos16.visible = false
                            m.unlock16.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star151.visible = true
                            m.star152.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos16.visible = false
                            m.unlock16.visible = true
                        else if  m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos16.visible = false
                            m.star151.visible = true
                            m.unlock16.visible = true
                        end if
                    else if m.lvl16.opacity =1
                        m.currentLevel = 16
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star161.visible = true
                            m.star162.visible = true
                            m.star163.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos17.visible = false
                            m.unlock17.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star161.visible = true
                            m.star162.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos17.visible = false
                            m.unlock17.visible = true
                        else if  m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos17.visible = false
                            m.star161.visible = true
                            m.unlock17.visible = true
                        end if
                    else if m.lvl17.opacity =1
                        m.currentLevel = 17
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star171.visible = true
                            m.star172.visible = true
                            m.star173.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos18.visible = false
                            m.unlock18.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star171.visible = true
                            m.star172.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos18.visible = false
                            m.unlock18.visible = true
                        else if  m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos18.visible = false
                            m.star171.visible = true
                            m.unlock18.visible = true
                        end if
                    else if m.lvl18.opacity =1
                        m.currentLevel = 18
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star181.visible = true
                            m.star182.visible = true
                            m.star183.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos19.visible = false
                            m.unlock19.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star181.visible = true
                            m.star182.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos19.visible = false
                            m.unlock19.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos19.visible = false
                            m.star181.visible = true
                            m.unlock19.visible = true
                        end if
                    else if m.lvl19.opacity =1
                        m.currentLevel = 19
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star191.visible = true
                            m.star192.visible = true
                            m.star193.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos20.visible = false
                            m.unlock20.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star191.visible = true
                            m.star192.visible = true
                            m.nextLevelOpen.visible = true
                            m.lvlPos20.visible = false
                            m.unlock20.visible = true
                        else if  m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.nextLevelOpen.visible = true
                            m.lvlPos20.visible = false
                            m.star191.visible = true
                            m.unlock20.visible = true
                        end if
                    else if (m.lvl20.opacity = 1)
                        m.currentLevel = 20
                        if m.score>=200
                            m.gameOverLabel.visible = false
                            m.star201.visible = true
                            m.star202.visible = true
                            m.star203.visible = true
                        else if m.score>=160 AND m.score<200
                            m.gameOverLabel.visible = false
                            m.star201.visible = true
                            m.star202.visible = true
                        else if m.score >= 120 AND m.score<160
                            m.gameOverLabel.visible = false
                            m.star201.visible = true
                        end if
                    end if
                end if
        else if m.thirdGroup.visible = true
            m.countPercentageBar = 0
            if key = "down"
                m.replayYes.opacity = 0.5
                m.replayNo.opacity = 1
                playSound(1)
                resetGameTime()
                m.gameTimerLabel.text="02:59"
                m.gameTimer.control = "start"
            else if key = "up"
                m.replayYes.opacity = 1
                m.replayNo.opacity = 0.5
                playSound(1)
                resetGameTime()
                m.gameTimerLabel.text="02:59"
                m.gameTimer.control = "start"
            end if
        else if (m.modeSelect.visible = true)
            resetLevel()
            if key = "down"
                m.mode1Label.opacity = 0.5
                m.mode2Label.opacity = 1
            else if key = "up"
                m.mode2Label.opacity = 0.5
                m.mode1Label.opacity = 1
            else if (key = "back")
                m.modeSelect.visible = false
                m.modeSelect.setFocus(false)
                m.firstGroup.visible = true
                m.firstGroup.setFocus(true)
            end if
        else if key = "back"
            if m.secondGroup.visible = true
                m.secondGroup.visible = false
                m.secondGroup.setFocus(false)
                if (m.mode1BackFlag = true)
                    m.modeSelect.visible = true
                    m.modeSelect.setFocus(true)
                    m.countPercentageBar=0
                    m.countPercentageBarLabel.text = "0%"
                else if (m.mode1BackFlag = false)
                    m.countPercentageBar=0
                    m.countPercentageBarLabel.text = "0%"
                    m.lvlsGroup.visible = true
                    m.lvlsGroup.setFocus(true)
                end if
                m.score = 0
                m.countQues = 2
                m.quesNum = 0
                m.dummy = 0
               resetGameTime()
               m.gameTimerLabel.text="02:59"
               m.gameTimer.control = "stop"
            else if (m.lvlsGroup.visible = true)
                m.lvlsGroup.visible = false
                m.lvlsGroup.setFocus(false)
                m.nextLevelOpen.text = "Level Complete"
                m.modeSelect.visible = true
                m.modeSelect.setFocus(true)
                resetLevel()
            else if (m.firstGroup.visible = true)
                m.gameTimer.control = "stop"
                m.backgroundMusic.control = "stop"
                m.firstGroup.visible = false
                m.firstGroup.setFocus(false)
                m.gamesRowScreen.visible = true
                m.homeGamesRowList.visible = true
                m.homeGamesRowList.setFocus(true)
            else if (m.aboutgameStatsScreen.visible = true)
                m.aboutgameStatsScreen.visible = false
                m.gamesRowScreen.visible = true
                m.homeGamesRowList.visible = true
                m.homeGamesRowList.setFocus(true)
            end if
        else if m.tim.control = "stop"
            if key = "right"
                if m.char1.opacity = 1
                    m.char1.opacity = 0.5
                    m.char2.opacity = 1
                    m.option1Focus.visible = false
                    m.option2Focus.visible = true
                    m.char2.uri = "pkg:/images/option2Focused.png"
                    m.char1.uri = "pkg:/images/option1Unfocused.png"
                else if m.char2.opacity = 1
                    m.char2.opacity = 0.5
                    m.char3.opacity = 1
                    m.option2Focus.visible = false
                    m.option3Focus.visible = true
                    m.char3.uri = "pkg:/images/option3Focused.png"
                    m.char2.uri = "pkg:/images/option2Unfocused.png"
                else if m.char3.opacity = 1
                    m.char3.opacity = 0.5
                    m.char4.opacity = 1
                    m.option3Focus.visible = false
                    m.option4Focus.visible = true
                    m.char4.uri = "pkg:/images/option4Focused.png"
                    m.char3.uri = "pkg:/images/option3Unfocused.png"
                end if
                ' for levels
                if (m.lvlsGroup.visible = true AND  m.unlockLevelTimer.control = "stop")
                    if (m.lvl1.opacity = 1 AND m.lvlPos2.visible = false)
                        m.lvl1.opacity = 0.5
                        m.lvl2.opacity = 1
                    else if (m.lvl2.opacity = 1 AND m.lvlPos3.visible = false)
                        m.lvl2.opacity = 0.5
                        m.lvl3.opacity = 1
                    else if (m.lvl3.opacity = 1 AND m.lvlPos4.visible = false)
                        m.lvl3.opacity = 0.5
                        m.lvl4.opacity = 1
                    else if (m.lvl4.opacity = 1 AND m.lvlPos5.visible = false)
                        m.lvl4.opacity = 0.5
                        m.lvl5.opacity = 1
                    else if (m.lvl5.opacity = 1 AND m.lvlPos6.visible = false)
                        m.lvl5.opacity = 0.5
                        m.lvl6.opacity = 1
                    else if (m.lvl6.opacity = 1 AND m.lvlPos7.visible = false)
                        m.lvl6.opacity = 0.5
                        m.lvl7.opacity = 1
                    else if (m.lvl7.opacity = 1 AND m.lvlPos8.visible = false)
                        m.lvl7.opacity = 0.5
                        m.lvl8.opacity = 1
                    else if (m.lvl8.opacity = 1 AND m.lvlPos9.visible = false)
                        m.lvl8.opacity = 0.5
                        m.lvl9.opacity = 1
                    else if (m.lvl9.opacity = 1 AND m.lvlPos10.visible = false)
                        m.lvl9.opacity = 0.5
                        m.lvl10.opacity = 1
                    else if (m.lvl10.opacity = 1 AND m.lvlPos11.visible = false)
                        m.lvl10.opacity = 0.5
                        m.lvl11.opacity = 1
                    else if (m.lvl11.opacity = 1 AND m.lvlPos12.visible = false)
                        m.lvl11.opacity = 0.5
                        m.lvl12.opacity = 1
                    else if (m.lvl12.opacity = 1 AND m.lvlPos13.visible = false)
                        m.lvl12.opacity = 0.5
                        m.lvl13.opacity = 1
                    else if (m.lvl13.opacity = 1 AND m.lvlPos14.visible = false)
                        m.lvl13.opacity = 0.5
                        m.lvl14.opacity = 1
                    else if (m.lvl14.opacity = 1 AND m.lvlPos15.visible = false)
                        m.lvl14.opacity = 0.5
                        m.lvl15.opacity = 1
                    else if (m.lvl15.opacity = 1 AND m.lvlPos16.visible = false)
                        m.lvl15.opacity = 0.5
                        m.lvl16.opacity = 1
                    else if (m.lvl16.opacity = 1 AND m.lvlPos17.visible = false)
                        m.lvl16.opacity = 0.5
                        m.lvl17.opacity = 1
                    else if (m.lvl17.opacity = 1 AND m.lvlPos18.visible = false)
                        m.lvl17.opacity = 0.5
                        m.lvl18.opacity = 1
                    else if (m.lvl18.opacity = 1 AND m.lvlPos19.visible = false)
                        m.lvl18.opacity = 0.5
                        m.lvl19.opacity = 1
                    else if (m.lvl19.opacity = 1 AND m.lvlPos20.visible = false)
                        m.lvl19.opacity = 0.5
                        m.lvl20.opacity = 1
                    end if
                end if
            else if key = "left"
                if m.char4.opacity = 1
                    m.char4.opacity = 0.5
                    m.char3.opacity = 1
                    m.option4Focus.visible = false
                    m.option3Focus.visible = true
                    m.char3.uri = "pkg:/images/option3Focused.png"
                    m.char4.uri = "pkg:/images/option4Unfocused.png"
                else if  m.char3.opacity = 1
                    m.char3.opacity = 0.5
                    m.char2.opacity = 1
                    m.option3Focus.visible = false
                    m.option2Focus.visible = true
                    m.char2.uri = "pkg:/images/option2Focused.png"
                    m.char3.uri = "pkg:/images/option3Unfocused.png"
                else if m.char2.opacity = 1
                    m.char2.opacity = 0.5
                    m.char1.opacity = 1
                    m.option2Focus.visible = false
                    m.option1Focus.visible = true
                    m.char1.uri = "pkg:/images/option1Focused.png"
                    m.char2.uri = "pkg:/images/option2Unfocused.png"
                end if
                'for level
                if (m.lvlsGroup.visible = true AND  m.unlockLevelTimer.control = "stop")
                    if (m.lvl2.opacity = 1)
                        m.lvl2.opacity = 0.5
                        m.lvl1.opacity = 1
                    else if (m.lvl3.opacity = 1)
                        m.lvl3.opacity = 0.5
                        m.lvl2.opacity = 1
                    else if (m.lvl4.opacity = 1)
                        m.lvl4.opacity = 0.5
                        m.lvl3.opacity = 1
                    else if (m.lvl5.opacity = 1)
                        m.lvl5.opacity = 0.5
                        m.lvl4.opacity = 1
                    else if (m.lvl6.opacity = 1)
                        m.lvl6.opacity = 0.5
                        m.lvl5.opacity = 1
                    else if (m.lvl7.opacity = 1)
                        m.lvl7.opacity = 0.5
                        m.lvl6.opacity = 1
                    else if (m.lvl8.opacity = 1)
                        m.lvl8.opacity = 0.5
                        m.lvl7.opacity = 1
                    else if (m.lvl9.opacity = 1)
                        m.lvl9.opacity = 0.5
                        m.lvl8.opacity = 1
                    else if (m.lvl10.opacity = 1)
                        m.lvl10.opacity = 0.5
                        m.lvl9.opacity = 1
                    else if (m.lvl11.opacity = 1)
                        m.lvl11.opacity = 0.5
                        m.lvl10.opacity = 1
                    else if (m.lvl12.opacity = 1)
                        m.lvl12.opacity = 0.5
                        m.lvl11.opacity = 1
                    else if (m.lvl13.opacity = 1)
                        m.lvl13.opacity = 0.5
                        m.lvl12.opacity = 1
                    else if (m.lvl14.opacity = 1)
                        m.lvl14.opacity = 0.5
                        m.lvl13.opacity = 1
                    else if (m.lvl15.opacity = 1)
                        m.lvl15.opacity = 0.5
                        m.lvl14.opacity = 1
                    else if (m.lvl16.opacity = 1)
                        m.lvl16.opacity = 0.5
                        m.lvl15.opacity = 1
                    else if (m.lvl17.opacity = 1)
                        m.lvl17.opacity = 0.5
                        m.lvl16.opacity = 1
                    else if (m.lvl18.opacity = 1)
                        m.lvl18.opacity = 0.5
                        m.lvl17.opacity = 1
                    else if (m.lvl19.opacity = 1)
                        m.lvl19.opacity = 0.5
                        m.lvl18.opacity = 1
                    else if (m.lvl20.opacity = 1)
                        m.lvl20.opacity = 0.5
                        m.lvl19.opacity = 1
                    end if
                end if
            end if
        end if
    end if
return true
end function

function unlockLevelTimerStatus()
    if m.unlock2.visible = true
        m.unlock2.visible = false
    else if m.unlock3.visible = true
        m.unlock3.visible = false
    else if m.unlock4.visible = true
        m.unlock4.visible = false
    else if m.unlock5.visible = true
        m.unlock5.visible = false
    else if m.unlock6.visible = true
        m.unlock6.visible = false
    else if m.unlock7.visible = true
        m.unlock7.visible = false
    else if m.unlock8.visible = true
        m.unlock8.visible = false
    else if m.unlock9.visible = true
        m.unlock9.visible = false
    else if m.unlock10.visible = true
        m.unlock10.visible = false
    else if m.unlock11.visible = true
        m.unlock11.visible = false
    else if m.unlock12.visible = true
        m.unlock12.visible = false
    else if m.unlock13.visible = true
        m.unlock13.visible = false
    else if m.unlock14.visible = true
        m.unlock14.visible = false
    else if m.unlock15.visible = true
        m.unlock15.visible = false
    else if m.unlock16.visible = true
        m.unlock16.visible = false
    else if m.unlock17.visible = true
        m.unlock17.visible = false
    else if m.unlock18.visible = true
        m.unlock18.visible = false
    else if m.unlock19.visible = true
        m.unlock19.visible = false
    else if m.unlock20.visible = true
        m.unlock20.visible = false
    end if
    m.unlockLevelTimer.control = "stop"
end function

' visibility of characters
function Play()
    m.questLine.visible = true
    m.char1.visible = true
    m.char2.visible = true
    m.char3.visible = true
    m.char4.visible = true

    m.char2.opacity = 0.5
    m.char3.opacity = 0.5
    m.char4.opacity = 0.5
end function

' reseting the characters
function resetUi()
    m.char1.uri = "pkg:/images/option1Focused.png"
    m.char2.uri = "pkg:/images/option2Unfocused.png"
    m.char3.uri = "pkg:/images/option3Unfocused.png"
    m.char4.uri = "pkg:/images/option4Unfocused.png"
end function

' play the required sound
function playSound(soundNum as integer)
    if(soundNum = 1)
        m.backgroundMusic.control = "play"
    else if (soundNum = 2)
        m.sound.uri = "pkg:/sounds/correct answer.wav"
        m.sound.control = "play"
    else if (soundNum = 3)
        m.sound.uri = "pkg:/sounds/wrong answer.wav"
        m.sound.control = "play"
    else if (soundNum = 4)
        m.sound.uri = "pkg:/sounds/game over.wav"
        m.sound.control = "play"
    end if
end function


