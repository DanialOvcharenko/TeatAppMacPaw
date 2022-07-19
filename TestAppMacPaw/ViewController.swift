//
//  ViewController.swift
//  TestAppMacPaw
//
//  Created by Mac on 05.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    let data = personalDataLoader().personalData
    let dataEquip = equipmentDataLoader().equipmentData
    
    let persTVCell = "persTableViewCell"
    let equipTVCell = "equipTableViewCell"
    let storyboardID = "Main"
    let persDetailVC = "personDetailVC"
    let equipDetailVC = "equipmentDetailVC"
    
    @objc fileprivate func handleSegmentChange() {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segment.addTarget(self, action: #selector(handleSegmentChange), for: .valueChanged)
        
        let nib = UINib(nibName: persTVCell, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: persTVCell)
        
        let nibEquip = UINib(nibName: equipTVCell, bundle: nil)
        tableView.register(nibEquip, forCellReuseIdentifier: equipTVCell)
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch segment.selectedSegmentIndex {
        case 0:
            return data.count
        default:
            return dataEquip.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch segment.selectedSegmentIndex {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: persTVCell, for: indexPath) as? persTableViewCell else {
                return UITableViewCell()
            }
            cell.cofigure(with: data[indexPath.row])
            cell.backgroundColor = .white
            cell.selectionStyle = .none
            return cell
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: equipTVCell, for: indexPath) as? equipTableViewCell else {
                return UITableViewCell()
            }
            cell.cofigure(with: dataEquip[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }
        
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch segment.selectedSegmentIndex {
        case 0:
            return 110
        default:
            return 110
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch segment.selectedSegmentIndex {
        case 0:
            let people = data[indexPath.row]
            
            let storyboard = UIStoryboard(name: storyboardID, bundle: nil)
            if let viewController = storyboard.instantiateViewController(withIdentifier: persDetailVC) as? personDetailViewController {
                viewController.people = people
                self.navigationController?.pushViewController(viewController, animated: true)
            }
        default:
            let equip = dataEquip[indexPath.row]
            
            let storyboard = UIStoryboard(name: storyboardID, bundle: nil)
            if let viewController = storyboard.instantiateViewController(withIdentifier: equipDetailVC) as? equipmentDetailViewController {
                viewController.equip = equip
                self.navigationController?.pushViewController(viewController, animated: true)
            }
        }
    }
}

