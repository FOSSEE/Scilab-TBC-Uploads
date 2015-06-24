
clc
//initialisation of variables
l=30//ft
g=32.2//ft/sec^2
d=5//ft
d1=3//ft
r=0.5
rp=30//rpm
Hs=10//ft
//CALCULATIONS
Ha=l*d*d*((2*%pi*rp)^2)*r/(g*d1*d1*60*60)
phead=34-Hs-Ha
//RESULTS
printf ('\n pressure head in cylinder= %.2f ',phead)
