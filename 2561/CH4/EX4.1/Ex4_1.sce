//Ex4_1
clc
IDSS=10*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current
VP=(-4)
disp("VP= "+string(VP)+" volts") // pinch off voltage 
VGS=(-2)
disp("VGS = "+string(VGS)+" volts") // gate to source voltage 
VDSmin=VGS-VP
disp("VDSmin  =VGS-VP="+string(VDSmin)+" volts") // Drain to source voltage 
ID=IDSS*(1-VGS/VP)^2
disp("ID =IDSS*(1-VGS/VP)^2= "+string(ID)+" ampere") //   drain current
