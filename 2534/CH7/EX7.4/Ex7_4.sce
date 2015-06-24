//Ex7_4
clc
RC = 4*10^3
RB = 1.2*10^6
VCC = 9
VBE = .2
beta = 80
disp("RC = "+string(RC)+"ohm")//collector resistance
disp("RB = "+string(RB)+"ohm")//base resistance
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("VBE = "+string(VBE)+"V")//voltage across base and emittter
disp("beta = "+string(beta))//current gain
IB = (VCC - VBE)/RB
disp("IB = (VCC - VBE)/RB = "+string(IB)+"A")//base current
IC = beta*IB
disp("IC = beta*IB = "+string(IC)+"A")//collector current
VCE = VCC - (IC*RC)
disp("VCE = VCC - (IC*RC) = "+string(VCE)+"V")//collector-emitter voltage
disp("The Q-point is("+string(VCE)+"V, "+string(IC)+"A)")//Q-point in fixed bias circuit
