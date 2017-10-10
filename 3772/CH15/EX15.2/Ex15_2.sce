// Problem no 15.2,Page no.352

clc;clear;
close;

D=0.8 //m //iameter of water main
h=100 //m //Pressure head
w=10*10**3 //N/m**3 //Weight of Water
sigma_t=20*10**6 //MPa //Permissible stress

//Calculation

p=w*h //N/m**2 //Pressure of inside the main
t=p*D*(2*sigma_t)**-1*100 //m //Thcikness of metal

//Result
printf("The Thickness of metal is %.2f",t);printf(" cm")
