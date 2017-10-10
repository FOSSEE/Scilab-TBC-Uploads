
// Number of parties and the corresponding number of lock-and-key pairs

printf("Parties involved\tNumber of lock-and-key pairs required")

n = (2:5)

//disp(n)
num = factorial(n)
//disp(num)
den = factorial(2)*factorial(n-2)
//disp(den)

for i=1:length(num)
    printf("\n\t%d\t\t\t\t%d\n",n(i),num(i)/den(i))
end
