//Ex9_10
clc
VGS = -2//voltage across gate and source
IDSS = 8*10^-3//maximum drain current
Vp = -6//pinch-off voltage
disp("IDSS = "+string(IDSS)+"A")
disp("Vp = "+string(Vp)+"V")
disp("VGS = "+string(VGS)+"V")
ID = IDSS*(1-(VGS/Vp))^2
disp("ID = IDSS*(1-(VGS/Vp))^2 = "+string(ID)+"A")//drainm current
RD = 2*10^3//drain resistance
VDD = 12//drain voltage
VDS = VDD - ID*RD
disp("VDD = "+string(VDD)+"V")//drain voltage
disp("RD = "+string(RD)+"ohm")//drain resistance
disp("VDS = VDD - ID*RD = "+string(VDS)+"V")//voltage across drain and source

// note : notification used for saturated drain-soucre current is given wrong in question i.e., IDS but is right in solution i.e., IDSS.
