import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate{

    //var images:[AnyObject] = [AnyObject]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let cvFlowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout();
        cvFlowLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        cvFlowLayout.itemSize = CGSize(width: 60, height: 60)
        let cv: UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: cvFlowLayout);
        cv.register(MyCustomCell.self, forCellWithReuseIdentifier: "myCell")
        cv.dataSource = self
        cv.delegate = self
        self.view.addSubview(cv)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Home"
        self.view.backgroundColor = .systemBackground
        
        
//        let url = URL(string: "https://cdn.arstechnica.net/wp-content/uploads/2018/06/macOS-Mojave-Dynamic-Wallpaper-transition.jpg")!
//        downloadImage(from: url)
    }
    
//    func downloadImage(from url: URL) {
//        print("Download Started")
//        getData(from: url) { data, response, error in
//            guard let data = data, error == nil else { return }
//            print(response?.suggestedFilename ?? url.lastPathComponent)
//            print("Download Finished")
//            // always update the UI from the main thread
//            print(data)
////            DispatchQueue.main.async() { [weak self] in
////                self?.imageView.image = UIImage(data: data)
////            }
//        }
//    }
    
//    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
//        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
//    }
}


extension HomeVC : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! MyCustomCell
        cell.backgroundColor = .blue
        return cell;
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
