//Ex6_4
clc
RC = 2.3*10^3
Re = 1*10^3
VCC = 12
VCE = 5
VBE = 0.7
beta = 50
disp("RC = "+string(RC)+"ohm")//collector resistance
disp("Re = "+string(Re)+"ohm")//emitter resistance
disp("VCC = "+string(VCC)+"V")//supply voltage
disp("VCE = "+string(VCE)+"V")//voltage across collector and emitter
disp("VBE = "+string(VBE)+"V")//voltage across base and emitter
disp("beta = "+string(beta))//current gain
// according to the given circuit, we have
IB = (VCC - VCE)/((beta+1)*[RC+Re])
disp("IB = (VCC - VCE)/((beta+1)*[RC+Re]) = "+string(IB)+"A")//base current
IC = beta*IB
disp("IC = "+string(IC)+"A")//collector current
//from the circuit we have,
Rt = (VCE-VBE)/IB
disp("Rt = (VCE - VBE)/IB = "+string(Rt)+"ohm")//resistance Rt as given in circuit
