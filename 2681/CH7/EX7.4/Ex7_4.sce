//resistance 
//given
clc
l=11d-3
d=0.2d-6
w=8d-3
delta_s=4.10d+7
Rp=l/(w*d*delta_s)//resistance
Rp=round(Rp*1000)/1000///rounding off decimals
disp(Rp,'the resistance for the given parameter in ohm')//ohm
