//Example 5.10
clear;
clc;

//Given
delG=18660-(14.4*T*log10(T))-(6.07*T)+(8.24*(10^(-3))*(T^2));//delGo in J mol^-1 in terms of temperature T in K
T1=298//temperature in K

//To determine delGo delSo and delHo
delGo=18660-(14.4*T1*log10(T1))-(6.07*T1)+(8.24*(10^(-3))*(T^2));
delHo=18660+(6.25*T1)-(8.24*10^(-3)*(T1^2));
delSo=(delHo-delGo)/T1;
mprintf('(i) delGo = %f J mol^-1',delGo);
mprintf('\n (ii) delSo = %f J K^-1 mol^-1',delSo);
mprintf('\n (iii) delHo = %f J mol^-1',delHo);
//end