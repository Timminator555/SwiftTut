import Foundation

func calculateTip(billAmount: Double, tipPercentage: Double) -> (tip: Double, total: Double) {
    let tipAmount = billAmount * (tipPercentage / 100.0)
    let totalAmount = billAmount + tipAmount
    return (tipAmount, totalAmount)
}

print("--- Simple Swift Tip Calculator ---")

print("Enter the bill amount (e.g., 45.50): ", terminator: "")
guard let inputBill = readLine(), let bill = Double(inputBill) else {
    print("Invalid bill amount entered.")
    exit(1)
}

print("Enter the tip percentage (eg., 15 for 15%): ", terminator:"")
guard let inputTip = readLine(), let tipPercent = Double(inputTip) else {
    print("Invalid tip percentage entered.")
    exit(1)
}

let result = calculateTip(billAmount: bill, tipPercentage: tipPercent)

print("\n ---results--- ")
print(String(format: "Tip Amount:    €%.2f", result.tip))
print(String(format: "total to Pay   €%.2f", result.total))