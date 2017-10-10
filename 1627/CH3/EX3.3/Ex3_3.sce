clc
//initialisation of variables
d=100*10^-3//m
p=35*10^6//N/m^2
c=5.17*10^8//N/m^2
//CALCULATIONS
Tc=(p*d)/(2*c)*1000//mm
f=Tc*2//mm
//RESULTS
printf('The safety factor is=% f mm',f)
