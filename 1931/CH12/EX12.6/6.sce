clc
clear
//INPUT DATA
Ho=6.5*10^4//The critical field at 0K in A/m
Tc=7.18//The temperature for lead in K
r=0.5*10^-3//radius of superconducting wire of lead in m
T=4.2//temperature of superconducting wire in K

//CALCULATION
Hc=(Ho*(1-(T/Tc)^2))//The critical field in KA/m
Ic=2*3.14*Hc*r//The critical density for a superconducting wire of lead is in A

//OUTPUT
printf('The critical density for a superconducting wire of lead is %3.2f in A',Ic)
