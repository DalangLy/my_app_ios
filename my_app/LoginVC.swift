import UIKit

class LoginVC: UIViewController {
    
    let loginUIContainer: UIStackView = {
        let stackView: UIStackView = UIStackView();
        stackView.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let loginHeader: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Login"
        label.font = UIFont(name: "Times New Roman", size: 45)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailInputField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 10, height: 100))
        textField.placeholder = "Email"
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.borderStyle = .roundedRect
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
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let loginButton: UIButton = {
        let button: UIButton = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        self.view.backgroundColor = .systemBackground
        
        self.setupUI()
    }

    func setupUI(){
        
        view.addSubview(loginUIContainer)
        
        NSLayoutConstraint.activate([
            loginUIContainer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            loginUIContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            loginUIContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            loginUIContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
        loginUIContainer.addSubview(loginHeader)
        
        NSLayoutConstraint.activate([
            loginHeader.topAnchor.constraint(equalTo: loginUIContainer.safeAreaLayoutGuide.topAnchor, constant: 200),
            loginHeader.centerXAnchor.constraint(equalTo: loginUIContainer.centerXAnchor),
        ])
        
        loginUIContainer.addSubview(emailInputField)
        
        NSLayoutConstraint.activate([
            emailInputField.topAnchor.constraint(equalTo: loginHeader.bottomAnchor, constant: 20),
            emailInputField.centerXAnchor.constraint(equalTo: loginUIContainer.centerXAnchor),
            emailInputField.leadingAnchor.constraint(equalTo: loginUIContainer.leadingAnchor),
            emailInputField.trailingAnchor.constraint(equalTo: loginUIContainer.trailingAnchor)
        ])
        
        loginUIContainer.addSubview(passwordInputField)
        
        NSLayoutConstraint.activate([
            passwordInputField.topAnchor.constraint(equalTo: emailInputField.bottomAnchor, constant: 20),
            passwordInputField.centerXAnchor.constraint(equalTo: loginUIContainer.centerXAnchor),
            passwordInputField.leadingAnchor.constraint(equalTo: loginUIContainer.leadingAnchor),
            passwordInputField.trailingAnchor.constraint(equalTo: loginUIContainer.trailingAnchor)
        ])
        
        loginUIContainer.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordInputField.bottomAnchor, constant: 20),
            loginButton.centerXAnchor.constraint(equalTo: loginUIContainer.centerXAnchor),
            loginButton.leadingAnchor.constraint(equalTo: loginUIContainer.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: loginUIContainer.trailingAnchor)
        ])
    }
    
    @objc func login(){
        self.navigationController?.pushViewController(HomeVC(), animated: true)
    }
}
