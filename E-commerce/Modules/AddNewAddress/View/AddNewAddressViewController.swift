//
//  AddNewAddressViewController.swift
//  E-commerce
//
//  Created by Mina on 01/03/2023.
//
import UIKit

class AddNewAddressViewController: UIViewController {
    
    @IBOutlet weak var AddAddressBtn: UIButton!
    @IBOutlet weak var CountryTF: UITextField!
    @IBOutlet weak var AddressTF: UITextField!
    @IBOutlet weak var PhoneTF: UITextField!
    @IBOutlet weak var CityTF: UITextField!
    @IBOutlet weak var ImageAddress: UIImageView!
    
    var ViewModel : AddressViewModel?
    var newAddress : Address?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //------round image------------
        ImageAddress.layer.cornerRadius = ImageAddress.frame.size.width/2.0
        self.ImageAddress.clipsToBounds = true
        
        
        ViewModel = AddressViewModel()
        newAddress = Address()
        uiTextField()
        
    }
    
    @IBAction func AddNewAddressBtn(_ sender: Any) {
        checkData()
        if AddressTF.text != "" && CityTF.text != "" && CountryTF.text != "" && PhoneTF.text != "" {
            newAddress?.country = CountryTF.text
            newAddress?.address1 = AddressTF.text
            newAddress?.phone = PhoneTF.text
            newAddress?.city = CityTF.text
            
            guard let address = newAddress else { return }
            ViewModel?.setAddress(setaddress: address)
 
        }
        self.navigationController?.popViewController(animated: true)
        
    }
    func checkData() {
        let titleMessage = "Missing Data"
        if CountryTF.text == "" {
            showAlertError(title: titleMessage, message: "Please enter your country name")
        }
        
        if CityTF.text == "" {
            showAlertError(title: titleMessage, message: "Please enter your city name")
        }
        
        if AddressTF.text == "" {
            showAlertError(title: titleMessage, message: "Please enter your address")
        }
        
        if PhoneTF.text == "" {
            showAlertError(title: titleMessage, message: "Please enter you phone number")
            
        } else {
            let check: Bool = validate(value: PhoneTF.text!)
            if check == false {
                self.showAlertError(title: "invalid data!", message: "please enter you phone number in correct format")
            }
        }
        
    }
    func validate(value: String) -> Bool {
        let PHONE_REGEX = "^\\d{11}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result = phoneTest.evaluate(with: value)
        print("RESULT \(result)")
        return result
    }
    func showAlertError(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
     func editBtn()
     {
      AddAddressBtn.backgroundColor = .clear
      AddAddressBtn.layer.cornerRadius = 5
      AddAddressBtn.layer.borderWidth = 1
      AddAddressBtn.layer.borderColor = UIColor.tintColor.cgColor
     }
    
    
    func uiTextField()
        {
            let bottomLine = CALayer()
                   bottomLine.frame = CGRect(x: 0.0, y: CountryTF.frame.height - 1, width: CountryTF.frame.width - 30, height: 1.0)
                   bottomLine.backgroundColor = UIColor.gray.cgColor
            CountryTF.borderStyle = UITextField.BorderStyle.none
            CountryTF.layer.addSublayer(bottomLine)
                   
                   let bottomLine2 = CALayer()
                   bottomLine2.frame = CGRect(x: 0.0, y: CountryTF.frame.height - 1, width: CountryTF.frame.width - 30, height: 1.0)
                   bottomLine2.backgroundColor = UIColor.gray.cgColor
                   CityTF.borderStyle = UITextField.BorderStyle.none
                   CityTF.layer.addSublayer(bottomLine2)
                   
                   
                   let bottomLine3 = CALayer()
                   bottomLine3.frame = CGRect(x: 0.0, y: CountryTF.frame.height - 1, width: CountryTF.frame.width - 30, height: 1.0)
                   bottomLine3.backgroundColor = UIColor.gray.cgColor
                   AddressTF.borderStyle = UITextField.BorderStyle.none
                   AddressTF.layer.addSublayer(bottomLine3)
                   
                   
                   let bottomLine1 = CALayer()
                   bottomLine1.frame = CGRect(x: 0.0, y: CountryTF.frame.height - 1, width: CountryTF.frame.width - 30, height: 1.0)
                   bottomLine1.backgroundColor = UIColor.gray.cgColor
                   PhoneTF.borderStyle = UITextField.BorderStyle.none
                   PhoneTF.layer.addSublayer(bottomLine1)
            
           
            
        }
        
}
