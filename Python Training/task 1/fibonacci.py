# A program to generate the fibonacci series

user_input = int(input("Enter a number : "))

def fibonacci(user_input):
    
    base_value = [0, 1]
    
    while len(base_value) < user_input :
        
        base_value.append(base_value[-1] + base_value[-2])
    
    return base_value

fibo = fibonacci(user_input)

print(fibo)