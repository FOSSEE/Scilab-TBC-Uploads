clc
//initialisation of variables
p=%pi
d=0.09//m^2
w=0.75//m
d1=15//m
d2=30//cm
s=9802//N/m^3
r=0.25//m
g=1.00//m
//CALCULATIONS
V=p*d*r*d1//m^3
F=w*s*V//N
V0=F/(g*s)//m^3
h=(4*V0)/(p*d)//m
//RESULTS
printf('The pole touch the botton without additionnal support or weight=% f m',h)
