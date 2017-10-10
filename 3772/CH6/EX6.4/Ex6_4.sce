// Problem no 6.4,Page No.156

clc;clear;
close;

M=100*10**3 //N //Moment
L=3 //m //Length
d=0.15 //m //Width
b=0.1 //m //width
E=2.1*10**7*10**4 //N/cm**2 

//Calculations

I=b*d**3*12**-1 //cm**4 //M.I of beam section
B_1=M*L*(E*I)**-1 //radian //Slope at B
B_2=M*L**2*(2*E*I)**-1*10**2 //cm //Deflection at point B

//Result
printf("The slope at Point B is %.2f radian",B_1)
printf("\n The Deflection at point B is %.2f cm",B_2)
