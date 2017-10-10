//Calculate the Standard Gibbs Energy change for the reaction (delrG) N2(g)+3H2(g)=2NH3(g)

//Example 9.2

clc;

clear;

Po=(760*10^5)/(1.01325*10^5);  //Standard pressure of the gas in torr

PN2=190;  //Partial pressure of the N2 gas in torr

PH2=418;  //Partial pressure of the H2 gas in torr

PNH3=722;  //Partial pressure of the NH3 gas in torr

Kp=((PNH3/Po)^2)/((PN2/Po)*(PH2/Po)^3);  //Equilibrium constant for reaction

R=8.314;  //Gas constant in J K^-1 mol^-1

T=298;  //Temperature of the gas in K

delrGo=-33.2*10^3;  //Standard Gibbs energy for the reaction J mol^-1

delrG=(delrGo+(R*T)*log(Kp))/1000;  //Standard Gibbs Energy change for the reaction in kJ mol^-1

printf("Standard Gibbs Energy Change = %.1f kJ mol^-1",delrG);
