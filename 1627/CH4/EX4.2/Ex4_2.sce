clc
//initialisation of variables
a=30//cm
w=3//m/s
p=61.02//in^2
g=9.84//ft/sec
w2=60//s/min
r=1/231//gal/in^3
//CALCULATIONS
Q=%pi*(a*10^-2)^2/4*w*(w2)//m^3/min
Q1=Q*(10^3)*p*(r)//gpm
//RESULTS
printf('The capacity of =% f gpm',Q1)
