//Ex7_7
clc
VCC = 12
RB = 300*10^3
RC = 1.5*10^3
Re = 2*10^3
beta = 100
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("RB = "+string(RB)+"ohm")//base resistance
disp("RC = "+string(RC)+"ohm")//collector resistance
disp("Re = "+string(Re)+"ohm")//emitter resistance
disp("beta = "+string(beta))//current gain
IB = VCC/(RB + beta*Re)
disp("IB = VCC/(RB + beta*Re) = "+string(IB)+"A")//base current
IC = beta*IB
disp("IC = beta*IB = "+string(IC)+"A")//collector current
IE = IB + IC
disp("IE = IB + IC = "+string(IE)+"A")//emitter current
VCE = VCC - IC*RC - IE*Re
disp("VCE = VCC - IC*RC - IE*Re = "+string(VCE)+"V")//collector-emitter voltage
disp("quiescent point is("+string(VCE)+"V, "+string(IC)+"A)")
