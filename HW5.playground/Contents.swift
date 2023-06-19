// 1. В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
protocol PizzeriaMenuProtocol {
    var name: String { get }
    var cost: Double { get }
}
struct Pizza: PizzeriaMenuProtocol {
    enum PizzaType {
        case margherita
        case pepperoni
        case vegetarian
        case hawaiian
        case meat
    }
    enum Ingridients: String {
        case tomato
        case cheeze
        case pepperoni
    }
    var cost: Double
    var type: PizzaType
    var isThin: Bool
    var add: [Ingridients]
    var name: String
}
enum Size {
    case s
    case m
    case l
}
struct FrenchFries: PizzeriaMenuProtocol {
    var cost: Double
    var size: Size
    var name: String
}
class Pizzeria {
    var menu: [PizzeriaMenuProtocol]
    
    init(menu: [PizzeriaMenuProtocol]) {
        self.menu = menu
    }
    func addPizza(_ pizza: Pizza) {
        menu.append(pizza)
    }
    func getMenu() -> [PizzeriaMenuProtocol] {
        menu
    }
}
// 2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
// func add(_ new: PizzeriaMenuProtocol) {
// menu.append(new)
// }

// 3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.

protocol WorkableProtocol {
    func open()
    func close()
}
// 4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
extension Pizzeria: WorkableProtocol {
    func open() {
        print("Open")
    }
    func close() {
        print("Close")
    }
}
// 5. Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.

func minus<T: Numeric>(a: T, b: T) -> T {
    a - b
}
