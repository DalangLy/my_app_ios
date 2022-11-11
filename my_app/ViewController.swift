import UIKit

class ViewController: UIViewController {
    
    let loginButton:UIButton = UIButton();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        self.view.backgroundColor = .systemBackground
        
        self.setupLogin()
        self.setupLoginLabel()
    }
    
    func setupLoginLabel(){
        let loginLabel:UILabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.font = UIFont(name: "Times New Roman", size: 45)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginLabel)
        
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.topAnchor),
            loginLabel.bottomAnchor.constraint(equalTo: loginButton.topAnchor),
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loginLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func setupEmailInput(){
        
    }

    func setupLogin(){
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.blue, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: view.topAnchor),
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

