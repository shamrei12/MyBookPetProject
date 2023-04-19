//
//  InfoBooksViewController.swift
//  Mybook
//
//  Created by Алексей Шамрей on 15.04.23.
//

import UIKit
import Kingfisher

class InfoBooksViewController: UIViewController {
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var nameBookLabel: UILabel!
    @IBOutlet weak var DescriptionBookLabel: UILabel!
    @IBOutlet weak var autorBookLabel: UILabel!
    @IBOutlet weak var ratingBook: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "book information"
        navigationItem.leftBarButtonItem =  UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(addTapped))
    }
    
    @objc func addTapped() {
        self.dismiss(animated: true)
    }
    
    func updateUIElement(key: String, isbn: String) {
        SessionManager.shared.getImage(isbn: isbn) { imageBook in
            SessionManager.shared.getGradeBooks(key: key) { gradeBook in
                DispatchQueue.global().async {
                    let imageURL = URL(string: imageBook.book.cover?.large ?? "")
                    let imageResource = ImageResource(downloadURL: imageURL!)
                    DispatchQueue.main.async {
                        let grade = round(gradeBook?.summary.average ?? 0.0)
                        self.bookImageView.kf.setImage(with: imageResource)
                        self.nameBookLabel.text = imageBook.book.title ?? "Данные отсутствуют"
                        self.DescriptionBookLabel.text = imageBook.book.subtitle ?? "Данные отсутстуют"
                        self.autorBookLabel.text = "Автор: \(imageBook.book.publishers.first?.name ?? "Данные отсутствуют")"
                        self.ratingBook.text = "Оценка: \(grade)"
                    }
                }

            }
            
            }

        
        
    }
    
}
