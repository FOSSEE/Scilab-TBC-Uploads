//Ex3_15
clc
Vd = 50
d = 1
disp("(a)")
disp("Vd = "+string(Vd)+"V")//voltage applied to deflection plates
disp("d = "+string(d)+"cm")//plate separation
E = Vd/d/10^-2
disp("E = Vd/d = "+string(E)+"V/m")//electric field produced

disp("(b)")
e = -1.6*10^-19
m = 9.1*10^-31
Va = 500
v = abs((2*e*Va/m))^.5
disp("v = (2*e*Va/m)^.5")// formula for Velocity OF Electron
disp("e = "+string(e)+"C")//electron charge
disp("m = "+string(m)+"Kg")//mass of electron
disp("Va = "+string(Va)+"V")//voltage applied at anode
disp("v = "+string(v)+"m/s")

disp("(c)")
l = 2
L = 30
Va = 500
SE = l*L/2/Va/d*10
disp("l = "+string(l)+"cm")//length of deflection plate
disp("L = "+string(L)+"cm")//distance between plates and screen
disp("d = "+string(d)+"cm")//plate separation
disp("Va = "+string(Va)+"V")//anode voltage
disp("SE = (l*L)/(2*Va*d) = "+string(SE)+"mm/volts")//Electrostatic deflection sensitivity
