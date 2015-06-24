//Ex7_8
clc
VCC = 9
RC = 3*10^3
RB = 500*10^3
beta = 100
VBE = 0.7
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("RC = "+string(RC)+"ohm")//collector resistance
disp("RB = "+string(RB)+"ohm")//base resistance
disp("beta = "+string(beta))//current gain
disp("VBE = "+string(VBE)+"V")//emitter-base voltage
//for a Fixed Bais Circuit;
IB = (VCC - VBE)/RB
disp("IB = (VCC - VBE)/RB  = "+string(IB)+"A")//base current
IC = beta*IB
disp("IC = beta*IB = "+string(IC)+"A")//collector current
VCE = VCC - IC*RC
disp("VCE = VCC - IC*RC = "+string(VCE)+"V")//collector-emitter voltage
disp("operating point is("+string(VCE)+"V, "+string(IC)+"A)")
S = 1+beta
disp("S = 1 + beta = "+string(S))//stability factor


// NOTE : in the textbook author has taken beta = 100 for calculation 
//        but has mention beta = 50 in Question
//        I am working with beta = 100.
