//resistance per square
//given
clc
l=30d-3//metre
t=0.1d-6//metre
Rp=0.3//ohm
delta_s=4.1d+7//mho/m
w=l/(Rp*t*delta_s)//metre
w=round(w*1000)/1000///rounding off decimals
disp(t*1d+6, w*1000,l*1d+3 ,'the design parameter of planer resistor are in mm and um')//millimetre
