
//Variable decalration

N=40     //No.of bits
E=5      //Maximum number of errors allowed
p=10**-3 //Average probability of error in transmission

//Calculation

Pmiss=0
for i = E+1:N
  Pmiss=Pmiss+(factorial(N)/((factorial(i)*factorial(N-i))))*(p**i)*((1-p)**(N-i))
end

Pmiss=Pmiss*10**12

//Result
printf("The probability of miss is %.1f * 10^-12",Pmiss)
