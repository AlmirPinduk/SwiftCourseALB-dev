//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct  StoryBrain{
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "Makina jote ka shpërthyer një gomë në një rrugë të ngushtë, në mes të askundit, pa shërbim celular. Vendos të bësh dhjetra dhe një kamion i vjetër ndalon ngadalë pranë teje. Një burrë me një kapelë të gjerë dhe sy të shterruar hap derën e pasagjerit për ty dhe pyet: 'Ke nevojë për një ngritje, djalë?'",
            choice1: "Do të hip në makinë. Faleminderit për ndihmën!", choice1Destination: 2,
            choice2: "Më mirë ta pyes nëse është vrasës para se të hip në makinë.", choice2Destination: 1
        ),
        Story(
            title: "Ai e tund kokën ngadalë, pa u tronditur nga pyetja.",
            choice1: "Të paktën është i sinqertë. Do të hip në makinë.", choice1Destination: 2,
            choice2: "Po, di si të ndryshoj gomën.", choice2Destination: 3
        ),
        Story(
            title: "Ndërsa filloni të shkoni, i huaji fillon të flasë për marrëdhënien me nënën e tij. Ai bëhet gjithnjë e më i zemëruar. Ai të kërkon të hapësh kutinë e dorezës. Brenda gjen një thikë të njomë me gjak, dy gishta të prerë dhe një kasetë të Elton John. Ai shtrëngon kutinë e dorezës.",
            choice1: "E dua Elton John! I jap kasetën.", choice1Destination: 5,
            choice2: "Është ai apo unë! E marr thikën dhe e godas.", choice2Destination: 4
        ),
        Story(
            title: "Çfarë? Kjo është një shmangie! E dinit se aksidentet e trafikut janë shkaku i dytë më i madh i vdekjeve aksidentale për shumicën e grupeve të moshave të rritur?",
            choice1: "Fillimi", choice1Destination: 0,
            choice2: "Fundi", choice2Destination: 0
        ),
        Story(
            title: "Ndërsa kaloni përmes pengesës dhe fluturoni drejt gurëve të mprehtë, mendon për mençurinë e dyshimtë të goditjes me thikë dikë që po drejton makinën që ndodheni.",
            choice1: "Fillimi", choice1Destination: 0,
            choice2: "Fundi", choice2Destination: 0
        ),
        Story(
            title: "Ti bëhesh miq me vrasësin ndërsa këndoni vargjet e 'A mund ta ndjeni dashurinë sonte'. Ai të lë në qytetin e ardhshëm. Para se të largohesh, ai të pyet nëse di ndonjë vend të mirë për të hedhur trupa. Ti përgjigjesh: 'Provo tek kalata.'",
            choice1: "Fillimi", choice1Destination: 0,
            choice2: "Fundi", choice2Destination: 0
        )
        
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    func getChoice1() -> String{
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String{
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String){
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1{
            storyNumber = currentStory.choice1Destination
        }else if userChoice == currentStory.choice2{
            storyNumber = currentStory.choice2Destination
        }
    }
    
}

