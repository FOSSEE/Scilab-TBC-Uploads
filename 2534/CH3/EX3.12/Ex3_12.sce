//Ex3_12
clc
disp("v = (2*e*Va/m)^.5")//formula used to calculate velocity of electrons
e = -1.6*10^-19
m = 9.1*10^-31
Va = 3.0*10^3
disp("e = "+string(e)+"C")//electron charge
disp("m = "+string(m)+"Kg")//mass of electron
disp("Va = "+string(Va)+"V")//potential difference = anode voltage
v = abs((2*e*Va/m))^.5
disp("v = "+string(v)+"m/s")
W = e*Va//kinetic energy
disp("W = e*Va = "+string(W)+"joules")//Kinetic energy
