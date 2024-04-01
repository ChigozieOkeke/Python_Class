## string formatting
price1=45000
price2=50000
price3=85000
## method 1
report="one shirt{}, shoe price is {}, jeans price is {}"
print(report.format(price1,price2,price3))

## method 2
print(f"shirt price is {price1} shoe price is {price2} and jeans price {price3}")

## using multilines
print(f"""shirt price is {price1}
shoe price is {price2}
jeans price is {price3}
""")

word5= "python is easy"
word6="  python is fun  "
print(word5.title())
print(word5.capitalize())
rint(word5.lower())
print(word5.upper())
print(word5.split())
print(word6.strip())

## Data type conversion
num1= "23" ##implicit conversion
num2= "45"
add= int(num1) + int(num2)
print(add)
print(float(num1))
print(float(add))
print(str(num2))

## input functions, basically used to prompt user.
name=input("what's your name?:")
##print(name)
age=int(input("what's your age?:"))
##print(age)

## Operators
## Types of Operators
## Arithemetic Operators
## Addition +
## Subtraction -
## Multiplication *
## Division /
## floor or integer Division //
## Exponatial**
## Remender %

num3=int(input("whatis the the first number:"))
num4=int(input("whatis the the second number:"))
print(f"{num3}+{num4}={num3+num4}")
print(f"{num3}-{num4}={num3-num4}")
print(f"{num3}*{num4}={num3*num4}")
print(f"{num3}/{num4}={num3/num4}")
print(f"{num3}//{num4}={num3//num4}")
print(f"{num3}**{num4}={num3**num4}")
print(f"{num3}%{num4}={num3%num4}")
