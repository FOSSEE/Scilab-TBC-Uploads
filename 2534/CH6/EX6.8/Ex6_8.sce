//Ex6_8
clc
VBB = 10
RB = 500*10^3
VCC = 15
RC = 1.2*10^3
beta =100
disp("beta = "+string(beta))//current gain
disp("VBB = "+string(VBB)+"V")//base supply voltage
disp("RB = "+string(RB)+"ohm")//resistance across base terminal
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("RC = "+string(RC)+"ohm")//resistance across collector terminal
IB = VBB/RB
disp("IB = VBB/RB = "+string(IB)+"A")//base current
IC = beta*IB
disp("IC = beta*IB = "+string(IC)+"A")//collector current
VCE = VCC - (IC*RC)
disp("VCE = VCC - IC*RC = "+string(VCE)+"V")//voltage across collector and emitter


// the answer printed in the textbook for VCE is wrong.
