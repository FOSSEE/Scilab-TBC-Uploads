// Variable declaration
alpha = 0.05             // level of significance
x = [2.4,4.4,4.8,6.2,14.8,19.5,23.1,25.0,28.2,28.7]
n = 10          
l = []

// Calculation
A_sq = 0

for i  = 1:10
    l(i) = (x(i)/30)
end
    
for i = 1:10
    A_sq = A_sq + (2*i-1)*(log(l(i)) + log(1 - l(n-i+1)))
end
    
A_sq = (-A_sq)/n - n

// Result
printf ( "A square value: %.4f",A_sq)
printf ( "As A_sq is large, We can not reject Null hypothesis")
