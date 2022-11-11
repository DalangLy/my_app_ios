import UIKit

class ViewController: UIViewController {
    
    let loginButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let loginHeader: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Login"
        label.font = UIFont(name: "Times New Roman", size: 45)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        self.view.backgroundColor = .systemBackground
        
        self.setupUI()
    }

    func setupUI(){
        view.addSubview(loginHeader)
        
        NSLayoutConstraint.activate([
            loginHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            loginHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        self.view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: loginHeader.bottomAnchor, constant: 20),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
