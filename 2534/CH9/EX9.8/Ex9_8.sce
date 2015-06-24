//Ex9_8
clc
//according to the given figure in the textbook for problem 8 in chapter 9:
VGS = -2//voltage across gate and source
IDSS = 6*10^-3//maximum drain current
Vp = -6//pinch-off voltage
disp("IDSS = "+string(IDSS)+"A")
disp("Vp = "+string(Vp)+"V")
disp("VGS = "+string(VGS)+"V")
ID = IDSS*(1-(VGS/Vp))^2
disp("ID = IDSS*(1-(VGS/Vp))^2 = "+string(ID)+"A")//drainm current
Rd = 2*10^3//drain resistance
VDD = 9//drain voltage
VDS = VDD - ID*Rd
disp("VDD = "+string(VDD)+"V")//drain voltage
disp("Rd = "+string(Rd)+"ohm")//drain resistance
disp("VDS = VDD - ID*Rd = "+string(VDS)+"V")//voltage across drain and source
