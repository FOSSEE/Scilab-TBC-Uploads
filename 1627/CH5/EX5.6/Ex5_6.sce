clc
//initialisation of variables
m=27*10^-3//N.s/m^2
sg=0.90
m1=27//cp
v1=5.6*10^-4//lbf.sec/ft^2
v2=2.5*10^-2//m
y=9802//N/m^3
g=9.8//m/s^2
Nr=4000
Nr1=2000
//CALCULATIONS
P=(y*sg)/g//N.s^2/m^4
V1=(Nr*m)/(v2*P)//m/s
V2=(Nr1*m)/(v2*P)//m/s
//RESULTS
printf('The critical velocity range is=% f m/s',V2)
