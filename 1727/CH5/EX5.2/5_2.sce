clc
clear
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
P1=80*10^3 //N/m^2
P2=12*10^6 + 101300 //N/m^2
Hq=-400 //J/N
//calculations
g1=g*rho
Hs= -Hq+ (P2-P1)/(g1)
//results
printf("Energy added by pump = %d J/N",Hs)
disp("The answer given in textbook is wrong. Please verify using a calculator")
