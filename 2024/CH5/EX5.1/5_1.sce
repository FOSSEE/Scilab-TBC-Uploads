clc
//Initialization of variables
Tr=500 //R
Ta=1000 //R
dt=100 //R
//calculations
n1=1- Tr/Ta
n2= 1-Tr/(Ta+dt)
n3 = 1- (Tr-dt)/Ta
//results
printf(" Efficiency in case 1 = %.1f percent",n1*100)
printf("\n Efficiency in case 3 = %.1f percent",n2*100)
printf("\n Efficiency in case 3 = %.1f percent",n3*100)
