//
//  QuestionBank.swift
//  HalloweenTrivia
//
//  Created by teresa.odera on 3/14/18.
//  Copyright © 2018 teresa.odera. All rights reserved.
//

import Foundation

class QuestionBank{
    //below is the list of questions for my application
    var list = [Question]()
    init(){
        list.append(Question(image: "image-1", questionText: "Many cultures have allusions toward this mythical creature. Adults use its to scare children into good behavior. It also has a movie released in 2005 ", choiceA: "boogeyman", choiceB: "Werewolf", choiceC: "Owlman", choiceD: "Oni", answer: 1))
        list.append(Question(image: "image-2", questionText: "this serial killer was featured in a movie released in 1991 ", choiceA: "Luis Garavito", choiceB: "Norman Bates", choiceC: "Buffalo Bill", choiceD: "Donald Gaskins", answer: 3))
        list.append(Question(image: "image-3", questionText: "Many cultures have allusiins toward this mythical creature. Adults use its to scare children into good behavior. It also has a movie released in 2005 ", choiceA: "boogeyman", choiceB: "Bughuul", choiceC: "Owlman", choiceD: "Oni", answer: 2))
        list.append(Question(image: "image-4", questionText: "Our favorite neighborhood slasher", choiceA: "Annabelle", choiceB: "Victorianna", choiceC: "Chucky", choiceD: "Oni", answer: 3))
        list.append(Question(image: "image-5", questionText: "this creature was in a hit movie released in 2004  directed by Paul Anderson ", choiceA: "Creature", choiceB: "Werewolf", choiceC: "The Babadook", choiceD: "Alien", answer: 4))
        list.append(Question(image: "image-6", questionText: "He's from transylvania! ", choiceA: "Dracula", choiceB: "Werewolf", choiceC: "Leatherface", choiceD: "Oni", answer: 1))
        list.append(Question(image: "image-7", questionText: "He's a burnt serial killer who roams elms street ", choiceA: "boogeyman", choiceB: "Werewolf", choiceC: "Freddy Kreuger", choiceD: "Oni", answer: 3))
        list.append(Question(image: "image-8", questionText: "This creepy character has been featured in 5 different movies since 1996", choiceA: "Gremlin", choiceB: "Werewolf", choiceC: "Chucky", choiceD: "ghostface", answer: 4))
        list.append(Question(image: "image-9", questionText: "His hit TV series was just too much for ABC, but his dinners were the best", choiceA: "Frankenstein", choiceB: "Hannibal Lecter", choiceC: "Chucky", choiceD: "Oni", answer: 2))
        list.append(Question(image: "image-10", questionText: "Every 27 years he emerges from the sewer to prey on children, he is...", choiceA: "The thing", choiceB: "Leatherface", choiceC: "Godzilla", choiceD: "It", answer: 4))
        list.append(Question(image: "image-11", questionText: "13 is his favorite numberespecially when its on a friday he is...", choiceA: "Jason Voorhees", choiceB: "Leatherface", choiceC: "Godzilla", choiceD: "It", answer: 1))
        list.append(Question(image: "image-12", questionText: "Every 27 years he emerges from the sewer to prey on children, he is...", choiceA: "The thing", choiceB: "Leatherface", choiceC: "Godzilla", choiceD: "Leatherface", answer: 4))
        list.append(Question(image: "image-13", questionText: "Every 27 years he emerges from the sewer to prey on children, he is...", choiceA: "Michael Myers", choiceB: "Ted Bundy", choiceC: "Tsutomu Miyazaki", choiceD: "Charles Edmund", answer: 1))
        list.append(Question(image: "image-14", questionText: "Every 27 years he emerges from the sewer to prey on children, he is...", choiceA: "Patrick Kearney", choiceB: "George Haigh", choiceC: "Dennis Raider", choiceD: "Norman Bates", answer: 4))
        list.append(Question(image: "image-15", questionText: "Every 27 years he emerges from the sewer to prey on children, he is...", choiceA: "The thing", choiceB: "Leatherface", choiceC: "Samara", choiceD: "It", answer: 3))
    }
}
