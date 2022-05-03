//
//  ViewController.swift
//  FamousSaying
//
//  Created by jgim on 2022/05/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    let quotes = [
        Quote(contents: "나의 죽음을 적에게 알리지마라", name: "이순신"),
        Quote(contents: "아무 하는 일 없이 시간을 허비하지 않겠다고 맹세하라. 우리가 항상 뭔가를 한다면 놀라우리만치 많은 일을 해낼 수 있다.", name: "토마스 제퍼슨"),
        Quote(contents: "일 분 전만큼 먼 시간은 없다.", name: "짐비숍"),
        Quote(contents: "행복은 성취의 기쁨과 창조적 노력이 주는 쾌감 속에 있다.", name: "프랭클린 d 루스벨트"),
        Quote(contents: "자신의 능력을 감추지 마라. 재능은 쓰라고 주어진 것이다. 그늘 속의 해시계가 무슨 소용이랴.", name: "벤자민 프랭클린")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func quoteCreatorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

