//Ex9_9
clc
Vp = -4//pinch off voltage
VGS = -1.5//gate source voltage
VDS_minimum = VGS - Vp//minimum VDS for Pinch Off voltage
disp("Vp = "+string(Vp)+"V")
disp("VGS = "+string(VGS)+"V")
disp("VDS_minimum = VGS - Vp = "+string(VDS_minimum)+"V")
IDSS = 6*10^-3//maximum drain current
ID = IDSS*(1-(VGS/Vp))^2//drain current at VGS = 0V
disp("IDSS = "+string(IDSS)+"A")
disp("ID = IDSS*(1-(VGS/Vp))^2 = "+string(ID)+"A")
