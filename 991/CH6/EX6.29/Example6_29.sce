//Example 6.29.
clc
format(6)
VCC=12
RC=250
IB=0.25*10^-3
beta=100
VCEQ=8
RB=VCEQ/IB
RB1=RB*10^-3
disp(RB1,"RB(k-ohm) = VCEQ / IB = ")
S=(1+beta)/(1+(beta*(RC/(RC+RB))))
disp(S,"Stability factor, S = (1+beta) / 1 + (beta*(RC/RC+RB)) = ")