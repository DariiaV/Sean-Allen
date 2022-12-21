//
//  ColorsTableVC.swift
//  ColorsInTableView
//
   

import UIKit

class ColorsTableVC: UIViewController {

    private let tableView = UITableView()
    private var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Colors"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Cells.colorCell)
        setUpTableView()
        addRandomColors()
    }
    
    private func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    private func setUpTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell, for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        let colorsDetailVC = ColorsDetailVC()
        colorsDetailVC.color = color
        navigationController?.pushViewController(colorsDetailVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
