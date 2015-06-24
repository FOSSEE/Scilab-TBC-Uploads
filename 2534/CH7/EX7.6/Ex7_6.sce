//Ex7_6
clc
RC = 2*10^3
beta = 100
VCC = 9
RB = 500*10^3
VBE = 0.6
disp("RC = "+string(RC)+"ohm")//collector resistance
disp("beta = "+string(beta))//current gain
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("RB = "+string(RB)+"ohm")//base resistance
disp("VBE = "+string(VBE)+"V")//base-emitter voltage
IB = (VCC - VBE)/RB
disp("IB = (VCC - VBE)/RB = "+string(IB)+"Amp")//base current
IC = beta*IB
disp("IC = beta*IB = "+string(IC)+"A")//collector current
VCE = VCC - IC*RC
disp("VCE = VCC - IC*RC = "+string(VCE)+"V")//collector-emitter voltage
disp("operating point is("+string(VCE)+"V, "+string(IC)+"A)")
