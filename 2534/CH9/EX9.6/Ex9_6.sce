//Ex9_6
clc
Vp = -4//pinch off voltage
ID = 4*10^-3//drain current
IDSS = 6*10^-3//maximum drain current
disp("Vp = "+string(Vp)+"V")
disp("ID = "+string(ID)+"A")
disp("IDSS = "+string(IDSS)+"A")
VGS = abs(Vp)*((ID/IDSS)^.5-1)
disp("VGS = Vp*((ID/IDSS)^.5-1) = "+string(VGS)+"V")//voltage across gate and source

