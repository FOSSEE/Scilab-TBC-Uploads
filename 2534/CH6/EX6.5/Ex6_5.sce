//Ex6_5
clc
VBB = 1
VCC = 12
IC = 12*10^-3
VCE = 4
beta = 80
VBE = 0.7
disp("VBB = "+string(VBB)+"V")//base supply voltage
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("IC = "+string(IC)+"A")//collector current
disp("VCE = "+string(VCE)+"V")//voltage across collector and emitter
disp("beta = "+string(beta))//current gain
disp("VBE = "+string(VBE)+"V")//voltage across base and emitter
IB = IC/beta
disp("IB = IC/beta = "+string(IB)+"A")//base current
RC = (VCC - VCE)/IC
disp("RC = (VCC - VCE)/IC = "+string(int(RC))+"ohm")//collector resistance
