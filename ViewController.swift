//
//  ViewController.swift
//  kadai10
//
//  Created by 八木佑樹 on 2024/05/29.
//

import UIKit

//UITableViewDelegate：、UITableViewDataSource：UITableViewに情報を与えるプロトコル
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    //背景色を定義
    let colors: [UIColor] = [.red, .blue, .green]
    
    //都道府県名と説明文をタプル配列にて定義
    let prefectures: [(rare: Int, name: String, description: String)] = [
        (rare: 1, name: "北海道", description: "北海道の説明文"),
        (rare: 2, name: "青森県", description: "青森県の説明文"),
        (rare: 3, name: "岩手県", description: "岩手県の説明文"),
        (rare: 4, name: "宮城県", description: "宮城県の説明文"),
        (rare: 5, name: "秋田県", description: "秋田県の説明文"),
        (rare: 6, name: "山形県", description: "山形県の説明文"),
        (rare: 7, name: "福島県", description: "福島県の説明文"),
        (rare: 8, name: "茨城県", description: "茨城県の説明文"),
        (rare: 9, name: "栃木県", description: "栃木県の説明文"),
        (rare: 10, name: "群馬県", description: "群馬県の説明文"),
        (rare: 11, name: "埼玉県", description: "埼玉県の説明文"),
        (rare: 12, name: "千葉県", description: "千葉県の説明文"),
        (rare: 13, name: "東京都", description: "東京都の説明文"),
        (rare: 14, name: "神奈川県", description: "神奈川県の説明文"),
        (rare: 15, name: "新潟県", description: "新潟県の説明文"),
        (rare: 16, name: "富山県", description: "富山県の説明文"),
        (rare: 17, name: "石川県", description: "石川県の説明文"),
        (rare: 18, name: "福井県", description: "福井県の説明文"),
        (rare: 19, name: "山梨県", description: "山梨県の説明文"),
        (rare: 20, name: "長野県", description: "長野県の説明文"),
        (rare: 21, name: "岐阜県", description: "岐阜県の説明文"),
        (rare: 22, name: "静岡県", description: "静岡県の説明文"),
        (rare: 23, name: "愛知県", description: "愛知県の説明文"),
        (rare: 24, name: "三重県", description: "三重県の説明文"),
        (rare: 25, name: "滋賀県", description: "滋賀県の説明文"),
        (rare: 26, name: "京都府", description: "京都府の説明文"),
        (rare: 27, name: "大阪府", description: "大阪府の説明文"),
        (rare: 28, name: "兵庫県", description: "兵庫県の説明文"),
        (rare: 29, name: "奈良県", description: "奈良県の説明文"),
        (rare: 30, name: "和歌山県", description: "和歌山県の説明文"),
        (rare: 31, name: "鳥取県", description: "鳥取県の説明文"),
        (rare: 32, name: "島根県", description: "島根県の説明文"),
        (rare: 33, name: "岡山県", description: "岡山県の説明文"),
        (rare: 34, name: "広島県", description: "広島県の説明文"),
        (rare: 35, name: "山口県", description: "山口県の説明文"),
        (rare: 36, name: "徳島県", description: "徳島県の説明文"),
        (rare: 37, name: "香川県", description: "香川県の説明文"),
        (rare: 38, name: "愛媛県", description: "愛媛県の説明文"),
        (rare: 39, name: "高知県", description: "高知県の説明文"),
        (rare: 40, name: "福岡県", description: "福岡県の説明文"),
        (rare: 41, name: "佐賀県", description: "佐賀県の説明文"),
        (rare: 42, name: "長崎県", description: "長崎県の説明文"),
        (rare: 43, name: "熊本県", description: "熊本県の説明文"),
        (rare: 44, name: "大分県", description: "大分県の説明文"),
        (rare: 45, name: "宮崎県", description: "宮崎県の説明文"),
        (rare: 46, name: "鹿児島県", description: "鹿児島県の説明文"),
        (rare: 47, name: "沖縄県", description: "沖縄県の説明文")
    ]

    
    //UITableViewDataSourceにあるメソッドを使用。定義した配列内の要素数をカウントしtableViewに？返す。
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let prefecture = prefectures[indexPath.row]
        cell.textLabel?.text = prefecture.name
        cell.detailTextLabel?.text = prefecture.description
        
        // 背景色の設定
        let colorIndex = indexPath.row % colors.count
        cell.backgroundColor = colors[colorIndex]
        
        return cell
    }
}
