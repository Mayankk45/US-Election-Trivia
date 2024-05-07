sub Main()
    'Indicate this is a Roku SceneGraph application'
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)

    'parsing json file
    parse = ReadAsciiFile("pkg:/USPresidentialElectionTrivia.json")
    parsing = ParseJson(parse)
    triviaQues = parsing.quiz

    ' parsing description file
    JString = ReadAsciiFile("pkg:/local/text.json")
    local = ParseJSON(JString)

    'creating global node
    m.global = screen.getGlobalNode()
    m.global.id = "GLobalNode"
    m.global.addField("myArray","roArray",true)
    m.global.setField("myArray",triviaQues)
    m.global.addField("local","roAssociativeArray",true)
    m.global.setField("local",local)
    m.global.addFields({quesLimit:20})

    'Create a scene and load /components/helloworld.xml'
    scene = screen.CreateScene("USElectionTrivia")
    scene.signalBeacon("AppLaunchComplete")
    screen.show()

    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
        if msgType = "roInputEvent"
            if msg.IsInput()
                info = msg.GetInfo()
                if info.DoesExist("mediaType") and info.DoesExist("contentID")
                    mediaType = info.mediaType
                    contentId = info.contentID
                end if
            end if
        end if
    end while
end sub

