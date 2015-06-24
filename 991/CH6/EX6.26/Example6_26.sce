//Example 6.26.
clc
format(6)
beta=100
VBE=0.7
VCC=10
RB=20*10^3
RC=0.4*10^3
RE=0.6*10^3
VBB=5
disp("Referring to fig.6.25, Kirchhoff voltage law equation is,")
disp("VBB = IB*RB + VBE(on) + IE*RE")
disp("Also,  IE = IB + IC = IB + beta*IB = (1 + beta)*IB")
IB=(VBB-VBE)/(RB+((1+beta)*RE))
IB1=IB*10^6
disp(IB1,"The base current,  IB(uA) = (VBB - VBE(on)) / (RB + ((1+beta)*RE)) = ")
IC=beta*IB
IC1=IC*10^3
disp(IC1,"Therefore,  IC(mA) = beta*IB = ")
IE=IC+IB
IE1=IE*10^3
disp(IE1,"IE(mA) = IC + IB")
VCE=VCC-(IC*RC)-(IE*RE)
disp(VCE,"VCE(V) = VCC - (IC*RC) - (IE*RE) = ")
disp("The Q point is at")
disp(VCE,"VCEQ(V) = ")
disp(IC1,"and ICQ(mA) = ")