import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate{
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let cvFlowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout();
        cvFlowLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        cvFlowLayout.itemSize = CGSize(width: 60, height: 60)
        let cv: UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: cvFlowLayout);
        cv.register(MyCustomCell.self, forCellWithReuseIdentifier: "myCell")
        cv.dataSource = self
        cv.delegate = self
        cv.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(cv)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Home"
        self.view.backgroundColor = .systemBackground
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
