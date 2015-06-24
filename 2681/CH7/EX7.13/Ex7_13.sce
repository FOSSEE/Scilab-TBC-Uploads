//resistance per square
//given
clc
w=10d-3//metre
t=0.08d-6//metre
Rp=0.15//ohm
delta_s=6.17d+7//mho/m
l=w*(Rp*t*delta_s)//metre
disp(l*1000,'the resistance for the given parameter in mm')//millimetre
