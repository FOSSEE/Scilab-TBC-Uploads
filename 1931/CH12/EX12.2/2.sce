clc
clear
//INPUT DATA
Tc=9.15//critical temperature of Nb in K
t=6//temperature of critical field in K
Ho=0.196//The critical field AT 0K in T

//CALCULATION
Hc=(Ho*(1-(t/Tc)^2))//The critical field at 6K in T

//OUTPUT
printf('The critical field at %iK is %3.4f T',t,Hc)
