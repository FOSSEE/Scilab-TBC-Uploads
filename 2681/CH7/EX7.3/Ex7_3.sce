//resistance 
//given
clc
l=11d-3//meter
d=0.2d-6//meter
w=8d-3//meter
delta_s=3.82d+7//mho/m
Rp=l/(w*d*delta_s)//resistance
Rp=round(Rp*100)/100///rounding off decimals
disp(Rp,'the resistance for the given parameter in ohm')//ohm
