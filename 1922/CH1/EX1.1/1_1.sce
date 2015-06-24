clc
clear
//Initialization of variables
P=2050 //kPa
T=700 //K
E=10 //J
//calculations
Pe=P*10^3 *0.3048^2 /4.4482 /144
Te=T*1.8-460
Ee=E*10^8 /(1055.1)
//results
printf("Temperature = %d F",Te)
printf("\n Pressure = %d lbf/in^2 ",Pe)
printf("\n Energy = %.3e Btu",Ee)
