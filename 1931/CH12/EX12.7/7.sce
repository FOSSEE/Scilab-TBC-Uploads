clc
clear
//INPUT DATA
Hc=10^5//The critical field for vanadium at 8.58K in A/m
Ho=2*10^5//The critical field for vanadium at 0K in A/m
T=8.58//temperature for vanadium in K

//CALCULATION
Tc=(T/(sqrt(1-(Hc/Ho))))//The critical temperature in K

//OUTPUT
printf('The critical temperature is %3.3f K',Tc)
