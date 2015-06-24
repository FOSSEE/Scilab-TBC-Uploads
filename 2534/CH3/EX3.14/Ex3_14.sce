//Ex3_14
clc
l = 22
d = 1.5
Va = 625
e = 1.6*10^-19
m = 9.1*10^-31
disp("l = "+string(l)+"cm")//distance from location of magnetic field
disp("d = "+string(d)+"cm")//length over which magnetic field is present
disp("Va = "+string(Va)+"V")//voltage applied to anode
disp("e = "+string(e)+"C")//electron charge
disp("m = "+string(m)+"Kg")//mass of electron
SH = l*10^-2*d*10^-2*(e/(2*m*Va))^.5
disp("SH = D/B = l*d*(e/(2*m*Va))^.5 = "+string(SH)+"m/tesla")//magnetic deflection sensitivity in terms of meter and tesla
// as B = micro_not*H
micro_not = 4*%pi*10^-7
disp("SH = D/H = micro_not*l*d*(e/(2*m*Va))^.5 = "+string(SH*micro_not)+"m-sq/Amp.")//magnetic deflection sensitivity in terms of meter and amperes
