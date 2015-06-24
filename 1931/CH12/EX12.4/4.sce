clc
clear
//INPUT DATA
Hc=7.2*10^3//The critical magnetic field in A/m
r=0.5*10^-3//radius of long thin superconducting wire in m

//CALCULATION
Ic=(2*3.14*Hc*r)//The critical current through a long thin superconductor in A

//OUTPUT
printf('The critical current through a long thin superconductor is %3.3f A',Ic)
