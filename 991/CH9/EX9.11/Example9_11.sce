//Example 9.11.refer fig.9.55
clc
format(6)
VCC=10
RB=470*10^3
RE=3.3*10^3
beta=100
RS=1*10^3
RL=50
re=22.4
VBE=0.7
IB = (VCC-VBE) / (RB + ((1+beta)*RE))
x1=IB*10^6
disp(x1,"From fig.9.55, IB(uA) = (VCC-VBE) / (RB + (1+beta)*RE)")
format(5)
IE=(1+beta)*IB
x2=IE*10^3
disp(x2,"  IE(mA) = (1+beta)*IB =")
rL=(RE*RL)/(RE+RL)
disp(rL,"The load resistance of the emitter follower is rL(ohm) = RE || RL =")                            // answer in textbook is wrong
x=(1+beta)*(re+rL)
Zi=(RB*x)/(RB+x)
x3=Zi*10^-3
disp(x3,"  Zi(k-ohm) = RB || (1+beta)(re+rL) =")
y=(50/(22.4+50))*((7.13*10^3)/((1*10^3)+(7.3*10^3)))  // answer in textbook is wrong
disp(y,"  VL / VS = (rL/re+rL)(Zi/Rs+Zi) =")