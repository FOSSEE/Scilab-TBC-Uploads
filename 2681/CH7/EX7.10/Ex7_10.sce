//resistance per square
//given
clc
l=12d-3//metre
t=0.12d-6//metre
w=10d-3//metre
delta_s=4.10d+7//mho/m
Rp=l/(w*t*delta_s)//resistance in ohm
Rp=round(Rp*10000)/10000///rounding off decimals
disp(Rp,'the resistance for the given parameter in ohm')//ohm
