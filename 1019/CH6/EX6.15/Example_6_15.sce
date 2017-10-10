//Example 6.15
clear;
clc;

//Given
T=298;//temperature in K
h=6.626;//plancks constant in 10^(34) Js
k=1.3806;//in (10^(-23)) J K^-1
c=2.997925;//speed of light in 10^8 m s^-2
w=158020;//vibrational frequency in m^-1
R=8.314;//gas constant in J mol^-1 K^-1

//To determine the vibrational contributions
x=(h*c*w)/(1000*k);//temperature in K
Hv=R*T*((x/T)/(exp(x/298)-1));//the vibrational contributions to enthalpy in J
Sv=R*(((x/T)/(exp(x/298)-1))-log(1)-(exp(-x/T)));//the vibrational contributions to entropy in J K^-1
Gv=Hv-(T*Sv);////the vibrational contributions to free energy in J mol^-1
mprintf('the vibrational contributions to enthalpy = %f J',Hv);
mprintf('\n the vibrational contributions to entropy = %f J K^-1',Sv);
mprintf('\n the vibrational contributions to free energy = %f J mol^-1',-Gv);
//end