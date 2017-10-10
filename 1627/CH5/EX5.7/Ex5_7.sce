clc
//initialisation of variables
sg=0.85
f1=300//m
f2=0.05//m
p=1000*10^-3//liters/min
t=(1/60)//min/sec
v=6.5*10^-2//m
g=9.8//m/s^2
p1=6.5//cm
//CALCULATIONS
V=(4*p*t)/((%pi)*(v)^2)//m/s
hf=((f2)*(f1)*(V)^2)/((p1)*2*g)//m
//RESULTS
printf('The pressure drop between the tanks is=% f m',hf)
