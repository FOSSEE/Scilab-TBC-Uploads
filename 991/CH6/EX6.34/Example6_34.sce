//Example 6.34.
clc
format(6)
VCC=10
RC=2*10^3
beta=50
RB=100*10^3
VBE=0.7  //collector to base resistor
disp("To determine quiescent point")
disp("the collector to base transistor circuit")
disp("              VCC = (beta*IB*RC) + IB*RB + VBE")
disp("Therefore,    IB  = (VCC - VBE) / (RB + (beta*RC))")
IB=(VCC-VBE)/(RB+(beta*RC))
IB1=IB*10^6
disp(IB1,"        IB(uA) =")
IC=beta*IB
IC1=IC*10^3
disp(IC1,"Hence, IC(mA) = beta * IB = ")
VCE=VCC-(IC*RC)
disp(VCE,"       VCE(V) = VCC - IC*RC =")
disp("Therefore,the co-ordinates of the new operating point are:")
disp(VCE,"VCEQ(V) = ")
disp(IC1,"ICQ(mA) = ")
disp("To find the stability factor S")
S=(1+beta)/(1+(beta*[RC/(RC+RB)]))
disp(S,"S = (1+beta) / (1 + (beta*[RC/(RC+RB)])) = ")