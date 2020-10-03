## Get Web Content to App

Metoda umozliwia wyswietlenie strony www w aplikacji. 

### 1. Tworzenie zmiennych i przechywcenie adresu URL wraz z trescia

```
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.muzeumpamieci.pl/aktualnosci/")!
        let task = URLSession.shared.dataTask(with: url){
            (data, response, error) in
            
            if(error == nil){
        
                let urlContent = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                print(urlContent)
            }
        }
        task.resume()
        
    }

}

```
