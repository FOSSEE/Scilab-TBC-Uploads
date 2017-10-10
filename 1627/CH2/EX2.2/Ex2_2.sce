clc
//initialisation of variables
sb=7.8
sg=0.97
v=75*10^-3//m/s
r=1.5*10^-3//m
g=9788.12//N/m^3
g1=978.81//dyne/cm^3
r1=1.5*10^-1//cm
v1=75*10^-1//cm/s
r2=1.5*32.81*10^-4//ft
g2=62.31//lbf/ft^3
v2=75*32.81*10^-4//ft/s
//CALCULATIONS
Mu=(2/9)*(r^2*g)*(sb-sg)/(v)//N S/m^2
Mu1=(2/9)*(r1^2*g1)*(sb-sg)/(v1)//dyne s/cm^2
Mu2=(2/9)*(r2^2*g2)*(sb-sg)/(v2)//lbf s/ft^2
M=Mu2*(1/144)//lbf s/in^2
//RESULTS
printf('The absolute viscosity of fluid is =% f lbf s/ft^2',M)
