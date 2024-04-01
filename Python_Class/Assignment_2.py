## 1. An input function prompt a user to enter a float datatype.
balance=float(input("enter a float datatype:"))
print(balance)

## 2. Write a program to use string.format() method to format the following three variables as per the expected output (total money = 1000, quantity = 3, price = 450) expected output I have 1000 dollars so I can buy 3 footballs for 450.00 dollars.
amount=1000
quantity=3
price=450
## method 1
report="Amount is {}, Quantity is {}, and Price is {}."
print(report.format(amount,quantity,price))
## method 2
print(f"Amount is {amount}, Quantity is {quantity}, and Price is {price}.")

print(f"""Amount is {amount},
Quantity is {quantity},
Price is {price}.
""")
print(f"Amount is {amount},\nQuantity is {quantity}, \nPrice is {price}.")
