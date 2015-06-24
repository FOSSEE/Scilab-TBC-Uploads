//Ex4_2
clc
IDSS=10*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current
VP=(-4)
disp("VP= "+string(VP)+" volts") // pinch off voltage 
VGS=(0)
disp("VGS = "+string(VGS)+" volts") // gate to source voltage1 
RDS=1/[(2*(IDSS/(-VP)))*(1-VGS/VP)]//formula for JFET
disp("RDS = 1/[(2*(IDSS/(-VP)))*(1-VGS/VP)]="+string(RDS)+" ohm") //   drain to source resistance for VGS=0V
VGS=(-2)
disp("VGS = "+string(VGS)+" volts") // gate to source voltage2 
RDS=1/[(2*(IDSS/(-VP)))*(1-VGS/VP)]
disp("RDS = 1/[(2*(IDSS/(-VP)))*(1-VGS/VP)]="+string(RDS)+" ohm") //   drain to source resistance for VGS=(-2)


