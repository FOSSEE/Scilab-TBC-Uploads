clc
//initialisation of variables
f=250//N
p=20*40//cm
v=0.5//m/s
f2=7.62*10^-5//m
//CALCULATIONS
Mu=(f*f2)/(p*10^-4*v)//N.s/m^2
//RESULTS
printf('The dynamic viscosity of the lubricant is=% f N.s/m^2',Mu)
