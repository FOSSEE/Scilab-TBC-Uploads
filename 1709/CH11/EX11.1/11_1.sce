clc
//Initialization of variables
x=1.5
P=14.696 //psia
m=28.96
//calculations
mf=114 // lbm/mol fuel
ma=x*12.5*(1+3.76)*m
AF=ma/mf
n1=8
n2=9
n3=(x-1)*12.5 
n4= x*3.76*12.5
np=n1+n2+n3+n4
x1=n1/np
x2=n2/np
x3=n3/np
x4=n4/np
ph=x2*P
Td=113.5 //F
//results
printf("Air fuel ratio = %.1f lbm air/lbm fuel",AF)
printf("\n Mole fraction of CO2 = %.2f percent",x1)
printf("\n Mole fraction of H2O = %.2f percent",x2)
printf("\n Mole fraction of O2 = %.2f percent",x3)
printf("\n Mole fraction of N2 = %.2f percent",x4)
disp("From tables of saturation pressure")
printf("Dew point  = %.1f F",Td)
