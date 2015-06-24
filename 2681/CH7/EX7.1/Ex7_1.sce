//resistance of a planar resistor
//given
clc
con_d=4.1d+7//mho/m
l=10d-3//m
w=5d-3//m
d=0.2d-6//m
Rp=l/(w*d*con_d)//resistance
Rp=round(Rp*1000)/1000///rounding off decimals
disp(Rp,'resistance of a aluminum planar resistor')//ohm
