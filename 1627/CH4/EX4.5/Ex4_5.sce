clc
//initialisation of variables
p=8000*10^-3//liters/min
r=15*10^-2//cm
v=2.5//m
//CALCULATIONS
V1=(4*(p)*(1/60))/(%pi*(r)^2)//m/s
D=sqrt(4*(p)*(1/60)/(%pi*v))*100//cm
//RESULTS
printf('The diameter of the suction line is=% f cm',D)
