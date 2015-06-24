clc
clear
//Initialization of variables
x1=8.7 //Moles of Co2
x2=8.9 //Moles of CO
x3=0.3 //Moles of O2
N=78.1 //Moles of N2
z=113 //Af factor
M=29 //Molar mass of air
//calculations
co2=(x1+x2+x3)*100/(N+x1+x2+x3)
a=2.325
AF=103*M/(a*z)
//results
printf("Air fuel ratio = %.2f",AF)
