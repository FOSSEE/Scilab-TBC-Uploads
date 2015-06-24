
//Variable decalration
N=40     //No.of bits
E=5      //Maximum number of errors allowed

//Calculation
Pfalse=0
for i = 0:E
  Pfalse=Pfalse+(factorial(N)*2**-N)/((factorial(i)*factorial(N-i)))
end

Pfalse=Pfalse*10**7

//Result
printf("The probability of miss is %.1f * 10^-7",Pfalse)
