Programming is simply the act of entering instructions for the computer to perform
--sample programm--
passwordFile = open('SecretPasswordFile.txt')
 secretPassword = passwordFile.read()
 print('Enter your password.')
  typedPassword = input()
if typedPassword == secretPassword:
    print('Access granted')
    if typedPassword == '12345':
       print('That password is one that an idiot puts on their luggage.')
  else:
    print('Access denied')
In Python, 2 + 2 is called an expression, which is the most basic kind of programming instruction in the language. Expressions consist of values (such as 2) and operators (such as +), and they can always evaluate (that is, reduce) down to a single value. That means you can use expressions anywhere in Python code that you could also use a value.
