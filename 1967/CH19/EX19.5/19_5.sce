clc
//initialisation of variables
clear
n= 2
T= 25 //C
R= 4.576 
is= 9.57*10^-6
n1= 4
f= 0.509 //volts
dH= 5970 //cal
SBa= 2.3 //E.U. gm ion^-1
Sba= 31.5 //E.U. gm ion6-1
//CALCULATIONS
r= 10^(-n1*f*sqrt(n1*is))
dF= -n*R*(273.2+T)*log10(is*r)
dS= (dH-dF)/(273.2+T)
Sso= Sba-SBa+dS
//RESULTS
printf ('Stanadard entropy of sulfate ion  = %.1f E.U.g ion^-1',Sso)
