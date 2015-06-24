//Chapter 12, Exmaple 3, page 406
//Calculate resistivity
clear
clc
l = 10^4 // cable length in m
Rr = 3/1.5 // R/r ratio
ins = 0.5*10**6 // insulation in ohms
p = 2*%pi*l*ins/log(Rr)
printf("\n Resistivity of insulation material = %e ohm/m ",p)

// Answers may vary due to round off error  
