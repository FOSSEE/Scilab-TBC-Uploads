//Example 6.32. refer fig.6.30.
clc
format(5)
R1=56*10^3
R2=12.2*10^3
RC=2*10^3
RE=400
VCC=10
VBE=0.7
beta=150
disp("From the Thevenin equivalent circuit shown in fig.6.30(b),")
RTH=(R1*R2)/(R1+R2)
RTH1=round(RTH*10^-3)
disp(RTH1,"RTH(k-ohm) = R1 || R2 =")
VTH=(R2/(R1+R2))*VCC
disp(VTH,"VTH(V) = (R2 / (R1+R2)) * VCC =")
disp("By kirchhoff voltage law equation,")
IBQ=(VTH-VBE)/(RTH+((1+beta)*RE))
IBQ1=IBQ*10^6
disp(IBQ1,"IBQ(uA) = (VTH-VBE(on)) / (RTH + ((1+beta)*RE)) = ")
ICQ=beta*IBQ
ICQ1=ICQ*10^3
disp(ICQ1,"Therefore,    ICQ(mA) = beta * IBQ = ")
format(6)
IEQ=IBQ+ICQ
IEQ1=IEQ*10^3
disp(IEQ1,"IEQ(mA) = IBQ + ICQ")
VCEQ=VCC-(ICQ*RC)-(IEQ*RE)
disp(VCEQ,"VCEQ(V) = VCC - (ICQ*RC) - (IEQ*RE)")
disp("The Q point is at :")
disp(VCEQ,"VCEQ(V) = ")
format(5)
disp(ICQ1,"ICQ(mA) = ")