clc
//Initialization of variables
g=1.4
r1=10
r2=12
r3=15
Tl=530 //R
Th=1960 //R
//calculations
eta1=1- (r1)^(1-g)
eta2=1- (r2)^(1-g)
eta3=1- (r3)^(1-g)
etac=1-Tl/Th
//results
printf("Efficiency in case 1 = %.1f percent",eta1*100)
printf("\n Efficiency in case 2 = %.1f percent",eta2*100)
printf("\n Efficiency in case 3 = %.1f percent",eta3*100)
printf("\n Carnot efficiency = %.2f percent",etac*100)
