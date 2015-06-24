clc
//Initialization of variables
N1=1
N2=1
N3=3
N4=1
//calculations
N=N1+N2+N3+N4
sig=factorial(N) /(factorial(N1) *factorial(N2)*factorial(N3)*factorial(N4))
//results
printf("No. of ways of arranging = %d ",sig)
