//resistance per square
//given
clc
l=15d-3//metre
t=0.1d-6//metre
w=15d-3//metre
delta_s=6.17d+7//mho/m
Rp=l/(w*t*delta_s)//resistance in ohm
Rp=round(Rp*1000)/1000///rounding off decimals
disp(Rp,'the resistance for the given parameter in ohm/square')//ohm/square
//ERROR IN THE PRINTING OF THE BOOK
