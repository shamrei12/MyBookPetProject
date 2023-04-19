//
//  MainViewController.swift
//  Mybook
//
//  Created by Алексей Шамрей on 14.04.23.
//

import UIKit
import Kingfisher

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    var searcList: [BookList] = []
    private var makerLink: MakeModel?
    private var pageNumberStart = 0
    private var pageNumberEnd = 8
    private var request = ""
    private var searching = false
    private var massListBook = [String]()
    
    
    override func viewDidLoad() {
        makerLink = MakeModel()
        super.viewDidLoad()
        navigationItem.title = "Book"
        
        tableView.register(UINib(nibName: "BookTableViewCell", bundle: nil), forCellReuseIdentifier: "BookTableViewCell")
    }
    
    @IBAction func searchBook(_ sender: UIButton) {
        if searchBar.text?.count ?? 0 > 0 {
            searcList.removeAll()
            searching = true
            request = (makerLink?.makeLink(request: searchBar.text ?? ""))!
            updateBookList(request: request)
        }
    }

    func updateBookList(request: String) {
        SessionManager.shared.bookShow(request: request) { [self] listBook in
            let count = listBook?.docs.count ?? 0
            for i in 0..<count {
                if let isbn = listBook?.docs[i].isbn?.first {
                    SessionManager.shared.singleBookShow(isbn: isbn) { bookInfo in
                        guard let image = bookInfo?.thumbnailUrl else {
                            return
                        }
                        self.searcList.append(BookListModel(key: listBook?.docs[i].key ?? "", name: listBook?.docs[i].title ?? "", isbn: isbn, firstPublicationDate:"\(listBook?.docs[i].firstPublishYear ?? 0)", imageBook: ("\(image)")))
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    }
                }
            }
        }
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return searcList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: BookTableViewCell
        if let reuseCell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell") as? BookTableViewCell {
            cell = reuseCell
        } else {
            cell = BookTableViewCell()
        }
        return configure(cell: cell, for: indexPath)
    }
    
    private func configure(cell: BookTableViewCell, for indexPath: IndexPath) -> UITableViewCell {
            DispatchQueue.global().async { [self] in
                if let imageUrl = URL(string: searcList[indexPath.row].imageBook ) {
                    let imageResource = ImageResource(downloadURL: imageUrl)
                    DispatchQueue.main.async { [self] in
                        cell.postName.text = searcList[indexPath.row].name
                        cell.bookDate.text = "Публикация: \(searcList[indexPath.row].firstPublicationDate) г."
                        cell.bookImageView.kf.setImage(with: imageResource)
                    }
                } else {
                    DispatchQueue.main.async { [self] in
                        cell.postName.text = searcList[indexPath.row].name
                        cell.bookDate.text = "Публикация: \(searcList[indexPath.row].firstPublicationDate) г."
                        cell.bookImageView.image = UIImage(named: "placeholder")
                    }
                }
            }
            return cell
        }
    }

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let infoBook = InfoBooksViewController.instantiate()
        let navigationController = UINavigationController(rootViewController: infoBook)
        infoBook.modalPresentationStyle = .fullScreen
        infoBook.updateUIElement(key: searcList[indexPath.row].key, isbn: searcList[indexPath.row].isbn)
        present(navigationController, animated: true)
    }
}
