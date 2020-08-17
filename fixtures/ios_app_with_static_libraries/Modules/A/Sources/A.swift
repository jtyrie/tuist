import B
import SPMA

public class A {
    public static let value: String = "aValue"

    public static func printFromA() {
        print("print from A")
        B.printFromB()
        SPMA.printFromSPMA()
    }
}
