import UIKit


class TabOneViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemBackground
        self.title = "Tab 1"
        
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        label.text = "Tab 1"
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}

class TabTwoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemBackground
        self.title = "Tab 2"
        
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        label.text = "Tab 2"
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class HomeVC: UITabBarController, UICollectionViewDelegate, UITabBarControllerDelegate{
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        let cvFlowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout();
//        cvFlowLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        cvFlowLayout.itemSize = CGSize(width: 60, height: 60)
//        let cv: UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: cvFlowLayout);
//        cv.register(MyCustomCell.self, forCellWithReuseIdentifier: "myCell")
//        cv.dataSource = self
//        cv.delegate = self
//        cv.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(cv)
        
        
        
        
        //create tab bar
        let tabOne = TabOneViewController()
        let tabOneBarItem = UITabBarItem(title: "Tab 1", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwo = TabTwoViewController()
        let tabTwoBarItem2 = UITabBarItem(title: "Tab 2", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [tabOne, tabTwo]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Home"
        self.view.backgroundColor = .systemBackground
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("select");
    }
}


extension HomeVC : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! MyCustomCell
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(DetailsVC(), animated: true)
    }
}


class MyCustomCell: UICollectionViewCell{
    
    private let myLabel:UILabel = {
        let label:UILabel = UILabel()
        label.text = "Hello"
        label.backgroundColor = .green
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.backgroundColor = .red
        
        myLabel.frame = self.contentView.frame
        self.contentView.addSubview(myLabel)
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
