// Problem no 14.8,Page No.334

clc;clear;
close;
H=10 //m //height of dam
a=1 //m //top width
b=7 //m //Bottom width
rho_mason=19620 //N/m**3 //weight of mason
rho_w=9810 //N/m**3 //density of water

//Calculations

//Lateral thrust
P=rho_w*H**2*2**-1

//weight of dam
W=(rho_w*H*2**-1*a)+(rho_mason*(a+b)*2**-1*H)

//Taking Moment at B,M_B=0
x_bar=((rho_w*H*2**-1*1*3**-1)+(rho_mason*H*2**-1*2*3**-1)+(rho_mason*H*1.5)+(rho_mason*H*5*11*2**-1*3**-1))*W**-1

//Now using relation we get
x=P*W**-1*H*3**-1

//Eccentricity
e=x_bar+x-b*2**-1

//Max stress
sigma_max=W*b**-1*(1+6*e*b**-1)

//Min stress
sigma_min=W*b**-1*(1-6*e*b**-1)

//Result
printf("The Max stresses on the base is %.2f",sigma_max);printf(" N/m**2")
printf("\n The Min stresses on the base is %.2f",sigma_min);printf(" N/m**2")
