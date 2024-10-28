//
//  TableViewController.swift
//  TableViewHomeWork
//
//  Created by Сергей Емелин on 27.10.2024.
//

import UIKit

class TableViewController: UITableViewController {

    var moviesArray = [
        Movie(title: "\"Падение черного ястреба\"", year: "Год выпуска: 2001", director: "Ридли Скотт", plot: "   В 1993 году в Сомали американские военные отправляются на спасательную операцию, которая превращается в жестокую битву за выживание после падения одного из вертолетов.", genre: "Военный, Драма, Боевик", runtime: "144 минуты", mainCast: "Джош Хартнетт, Юэн Макгрегор, Том Сайзмор, Эрик Бана", image: "BlackHawkDawn"),
        Movie(title: "\"Три короля\"", year: "Год выпуска: 1999", director: "Дэвид О. Рассел", plot: "    Три американских солдата, находясь в Ираке после войны в Персидском заливе, решают украсть золото, но вскоре сталкиваются с моральными и опасными последствиями.", genre: "Военный, Комедия, Драма", runtime: "114 минут", mainCast: "Джордж Клуни, Марк Уолберг, Айс Кьюб, Спайк Джонз", image: "ThreeKings"),
        Movie(title: "\"Троя\"", year: "Год выпуска: 2004", director: "Вольфганг Петерсен", plot: "   Экранизация поэмы Гомера “Илиада”, описывающая легендарную Троянскую войну, трагическую любовь Париса и Елены и эпическую битву, в которой участвуют легендарные герои.", genre: "Историческая драма, Боевик", runtime: "163 минуты", mainCast: "Брэд Питт, Эрик Бана, Орландо Блум, Диана Крюгер", image: "Troy"),
        Movie(title: "\"Александр\"", year: "Год выпуска: 2004", director: "Оливер Стоун", plot: "    История Александра Великого, великого полководца и его амбициозных завоеваний, которые изменили облик мира, но также принесли ему трудности и предательство.", genre: "Историческая драма, Боевик", runtime: "175 минут", mainCast: "Колин Фаррелл, Анджелина Джоли, Вэл Килмер, Джаред Лето", image: "Alexander"),
        Movie(title: "\"Несломленный\"", year: "Год выпуска: 2014",director: "Анжелина Джоли", plot: "    Реальная история Луи Замперини, бывшего олимпийца, ставшего военнопленным во время Второй мировой войны, прошедшего через суровые испытания и сохранившего силу духа.", genre: "Военный, Драма, Биография", runtime: "137 минут", mainCast: "Джек О’Коннелл, Донал Глисон, Мияви, Гаррет Хедлунд", image: "Unbroken")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return moviesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let titleLabel = cell.viewWithTag(1001) as! UILabel
        titleLabel.text = moviesArray[indexPath.row].title
        
      
        let yearLabel = cell.viewWithTag(1002) as! UILabel
        yearLabel.text = moviesArray[indexPath.row].year
        
        
        let uiImageView = cell.viewWithTag(1003) as! UIImageView
        uiImageView.image = UIImage(named: moviesArray[indexPath.row].image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.show(vc, sender: self)
        vc.movie = moviesArray[indexPath.row] 
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
