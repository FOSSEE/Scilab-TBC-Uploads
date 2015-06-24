clc
clear
//Initialization of variables
x1=8.7
x2=8.9
x3=0.3
N=78.1
z=113
M=29
//calculations
co2=(x1+x2+x3)*100/(N+x1+x2+x3)
a=2.325
AF=103*M/(a*z)
//results
printf("Air fuel ratio = %.2f",AF)
