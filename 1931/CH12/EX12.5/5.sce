clc
clear
//INPUT DATA
Tc=3.7//critical temperature of superconducting Sn in K
t=2//temperature of critical field in K
Ho=0.0306//The critical field at 0K in T

//CALCULATION
Hc=(Ho*(1-(t/Tc)^2))//The critical field at 6K in T

//OUTPUT
printf('The critical field at %iK is %3.6f tesla',t,Hc)
