//
//  Question.swift
//  question2021
//
//  Created by 楊易學 on 2021/2/3.
//

import Foundation

struct Question {
    let discription: String
    let rightAnswer: String
    let choice: [String]
}

let questions = [Question.init(discription: "請問法國盛行香水是以下何原因？", rightAnswer: "傳染病", choice: ["傳染病","習慣","模仿貴族","基於禮儀"]),
                Question.init(discription: "以下什麼動物千杯不醉？", rightAnswer: "懶猴", choice: ["大象","黑猩猩","懶猴","兔子"]),
                Question.init(discription: "為何海盜的形象總是帶著眼罩？", rightAnswer: "適應黑暗", choice: ["耍狠","真瞎","適應黑暗","模仿希臘神形象"]),
                Question.init(discription: "什麼顏色的貓最不怕死？", rightAnswer: "橘貓", choice: ["橘貓","黑貓","白貓","三花貓"]),
                Question.init(discription: "在古代梁朝，如科舉考試成績拙劣，將會受到以下何種罰則？", rightAnswer: "喝墨汁", choice: ["10大板","永生不得參加科舉","喝墨汁","去勢"]),
                Question.init(discription: "請問在西班牙，當地人如何形容下暴雨？", rightAnswer: "下著老公", choice: ["下著神的屎尿","下著老公","下著老巫婆","下著煙斗"]),
                Question.init(discription: "請問以前的香草口味是由以下何者製成？", rightAnswer: "海貍肛門分泌物", choice: ["天然草本","大麻提煉","海貍肛門分泌物","就是香草"]),
                Question.init(discription: "請問人們大多認為怎麼樣的男人講話更專業？", rightAnswer: "胖子", choice: ["瘸子","矮小","胖子","瘦子"]),
                Question.init(discription: "海豹在水中大力鼓掌的原因為何？", rightAnswer: "求偶炫技", choice: ["求偶炫技","嚇阻敵人","拍手做運動","無聊紓壓"]),
                Question.init(discription: "Peter是怎麼樣的人", rightAnswer: "工具人", choice: ["女人","小矮人","工具人","老人"])]
