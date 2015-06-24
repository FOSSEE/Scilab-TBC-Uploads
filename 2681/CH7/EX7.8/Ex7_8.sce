//resistance of a planer resistor
//given
clc
l=8d-3//metre
t=0.1d-6//metre
w=8d-3//metre
delta_s=1/0.262d-7//mho/m
Rp=l/(w*t*delta_s)//resistance in ohm
disp(Rp,'the resistance for the given parameter in ohm')//ohm
