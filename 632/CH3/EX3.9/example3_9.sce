//clc()
m1 = 10;//kg
m2 = 5;//kg
sp.g1 = 1.17;
sp.g2 = 0.83;
Dwater = 1000;//kg/m^3
DA = Dwater * sp.g1;
DB = Dwater * sp.g2;
V1 = m1 / DA;
V2 = m2 / DB;
V = V1 + V2;
Dmix = (m1 + m2)/ V ;
sp.g3 = Dmix / Dwater;
disp(sp.g3,"specific gravity of mixture =")