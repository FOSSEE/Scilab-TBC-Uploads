//example 5.26


clear;
clc;

//Given:
T=169.25;//Boiling point[K]
R=8.314;//Universal gas constant[J/K/mol]
disp("dlnP/dT=He/R*T^2");
disp("dlnP/dT=(2.303*834.13/T^2)+(1.75/T)-(2.30*8.375*10^-3)");
disp("Therefore using these two equations we calculate the He(enthalpy) of ethylene");

//To find the Enthalpy of vaporization of ethylene
x=(2.303*834.13/T^2)+(1.75/T)-(2.30*8.375*10^-3);//it is dlnP/dT
He=R*0.001*T^2*x;//Enthalpy of vaporization[J/mol]
printf("\n\nThe Enthalpy of vaporization of ethylene at its boiling point is %f KJ/mol",He);





