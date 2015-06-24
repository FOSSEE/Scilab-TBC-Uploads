clc
clear
//Initialization of variables
k4=1.8
k5=0.8
//calculations
A=[k4 k5;1 1]
b=[1; 1]
C=A\b
x4=C(1)
x5=C(2)
y4=k4*x4
y5=k5*x5
//results
printf("Vapor and liquid mole fractions of component 1 = %.2f and %.2f respectively",y4,x4)
printf("\n Vapor and liquid mole fractions of component 2 = %.2f and %.2f respectively",y5,x5)
