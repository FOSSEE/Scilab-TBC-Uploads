// Example 7.3 page no-403
clear
clc

//(a)
dA=100
A=1000
dAf=0.1
Af=100
B=(((dA/A)*(Af/dAf))-1)/A
printf("(a)\nBeta=%.3f",B)
//(b)
Aff=A/(1+B*A)
printf("\n\n(b)\nAf=%d",Aff)
