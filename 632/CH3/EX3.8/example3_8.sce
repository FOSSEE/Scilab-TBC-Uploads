//clc()
m1 = 1;//kg (mass in air)
m2 = 0.9;//kg (mass in water)
m3 = 0.82;//kg (mass in liquid)
L1 = m2 - m1;//kg (loss of mass in water)
L2 = m3 - m1;//kg (loss of mass in liquid)
sp.g = L2 /L1;
disp(sp.g,"specific gravity of liquid = ")