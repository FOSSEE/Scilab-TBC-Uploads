clc
//initialisation if variables
m=1*10^-4//kg
v=0.0005//m^3
l=22.57*10^5//j
t1=15//c
p=6//kg/m^3
//calculations
H=m*l
h=v*p*(100-t1)*4.18
c=H/h
//results
printf(' specific heat of gas at constant volume= % 1f j',c)
