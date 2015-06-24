//Example 6.19.
clc
format(6)
disp("Referring to fig.6.18, the base current is,")
VBB=4
VBE=0.7
RB=200*10^3
IB=(VBB-VBE)/RB
IB1=IB*10^6
disp(IB1,"IB(uA) = (VBB - VBE) / RB = ")
beta=200
IC=beta*IB
IC1=IC*10^3
disp(IC1,"The collector current is, IC(mA) = beta*IB = ")
format(7)
IE=IC+IB
IE1=IE*10^3
disp(IE1,"The emitter current is, IE(mA) = IC + IB = ")
format(6)
VCC=10
RC=2*10^3
VCE=VCC-(IC*RC)
disp(VCE,"Therefore,  VCE(V) = VCC - IC*RC = ")