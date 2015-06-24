// Example 6.28.
clc
format(6)
VCC=12
beta=100
VBE=0.7
disp("Refer fig.6.26. We know that for a silicon transistor, VBE = 0.7 V")
disp("(a) To determine RB :")
VCE=7
IC=1*10^-3
RC=(VCC-VCE)/IC
RC1=RC*10^-3
disp(RC1,"RC(k-ohm) = (VCC - VCE) / IC = ")
IB=IC/beta
IB1=IB*10^6
disp(IB1,"IB(uA) = IC / beta = ")
RB=(VCC-VBE-(IC*RC))/IB
RB1=RB*10^-3
disp(RB1,"RB(k-ohm) = (VCC - VBE - (IC*RC)) / IB = ")
S=(1+beta)/(1+(beta*(RC/(RC+RB))))
format(5)
disp(S,"(b) Stability factor, S =(1 + beta) / (1 + (beta*(RC / (RC+RB)))) = ")
beta1=50
format(6)
disp("(c) VCC = (beta*IB*RC) + (IB*RB) + VBE")
disp("        = IB * ((beta*RC) + RB) + VBE")
IB=(VCC-VBE)/((beta1*RC)+RB)
IB1=IB*10^6
disp(IB1,"IB(uA) = (VCC-VBE) / ((beta*RC)+RB) = ")
IC=beta1*IB
IC1=IC*10^3
disp(IC1,"IC(mA) = beta*IB = ")
VCE=VCC-(IC*RC)
disp(VCE,"VCE = VCC - (IC*RC) = ")
disp("Therefore the coordinates of new operating point are :")
disp(VCE,"VCEQ(V) = ")
disp(IC1,"ICQ(mA) = ")