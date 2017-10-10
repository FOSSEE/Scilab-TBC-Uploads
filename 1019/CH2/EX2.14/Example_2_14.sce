//Example 2.14
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
p1=2;// initial pressure in atm
v1=0.5;// initial volume in dm^3
v2=2;// final volume in dm^3
V=1.4;// coefficient of adiabatic expansion (gamma)

// To determine Work done
p2=p1*((v1/v2)^V);//final pressure in atm
Wad=(-1)*(((p1*101*v1)-(p2*v2*101))/(V-1));//work done in adiabatic process in J
Wiso=p1*v1*101*log(v2/v1);////work done in isothermal process in J
mprintf('(i) Work done in adiabatic process = %f J',Wad);
mprintf('\n (ii) Work done during isothermal process = %f J',Wiso);
//end