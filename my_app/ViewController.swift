import UIKit

class ViewController: UIViewController {
    
    let loginHeader: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Login"
        label.font = UIFont(name: "Times New Roman", size: 45)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let loginButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let emailInputField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 10, height: 100))
        textField.placeholder = "Email"
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordInputField: UITextField = {
        let textField: UITextField = UITextField()
        textField.placeholder = "Password"
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
            loginHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        self.view.addSubview(emailInputField)
        
        NSLayoutConstraint.activate([
            emailInputField.topAnchor.constraint(equalTo: loginHeader.bottomAnchor, constant: 20),
            emailInputField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            emailInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        self.view.addSubview(passwordInputField)
        
        NSLayoutConstraint.activate([
            passwordInputField.topAnchor.constraint(equalTo: emailInputField.bottomAnchor, constant: 20),
            passwordInputField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordInputField.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            passwordInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        self.view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordInputField.bottomAnchor, constant: 20),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
    }
}
