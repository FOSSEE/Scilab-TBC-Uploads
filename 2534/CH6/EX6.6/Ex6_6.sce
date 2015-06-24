//Ex6_6
clc
VCC = 9
VBB = 3
IC = 2*10^-3
beta = 50
VBE = 0.7
VCE = 4
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("VBB = "+string(VBB)+"V")//base supply voltage
disp("IC = "+string(IC)+"A")//collector current
disp("beta = "+string(beta))//current gain
disp("VBE = "+string(VBE)+"V")//voltage across base and emitter
disp("VCE = "+string(VCE)+"V")//voltage across collector and emitter
IB = IC/beta
disp("IB = IC/beta = "+string(IB)+"A")//base current
RB = (VBB - VBE)/IB
disp("RB = (VBB - VBE)/IB = "+string(RB)+"ohm")//base resistance according to the given in circuit


// note: misprint in the question, author is asking for IB instead of beta, as beta is already provided.
// note: calculation done in the textbook for the problem is wrong.
