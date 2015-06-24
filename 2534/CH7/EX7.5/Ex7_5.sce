//Ex7_5
clc
VBE = 0.6
beta = 100
disp("beta = "+string(beta))//current gain
disp("VBE = "+string(VBE)+"V")//voltage across base and emitter
//according to given circuit;
VCC = 12
RC = 5*10^3
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("RC = "+string(RC)+"ohm")//collector resistance
// optimum operating point is half of (VCC/RC)
IC = (1/2)*(VCC/RC)
disp("IC = VCC/(2*RC) = "+string(IC)+"A")//collector current at optimum operating point
IB = IC/beta
disp("IB = IC/beta = "+string(IB)+"A")//base current
//from the closed circuit in the given fig., we have
disp("IB*RB = VCC - VBE")
RB = (VCC - VBE)/IB 
disp("RB = (VCC - VBE)/IB = "+string(RB)+"ohm")//veriable resistance across base-collector as given in circuit

