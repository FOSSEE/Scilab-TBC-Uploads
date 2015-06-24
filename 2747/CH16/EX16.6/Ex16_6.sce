clc
clear
//Initialization of variables
N2=78.1
M=29
ba=2.12
x4=0.3
x5=3.7
x6=14.7
//calculations
O2=N2/3.76
c=14.7
b= x4*4 + x5*2 + x6*2
a=b/ba
AF=(O2+N2)*M/(a*12 + b)
//results
printf("Air fuel ratio = %.1f lbm air/lbm fuel",AF)
