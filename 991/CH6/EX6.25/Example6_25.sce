//Example 6.25.
clc
format(6)
ICQ=1*10^-3
VCEQ=6
VCC=10
beta=100
VBE=0.7
RC=(VCC-VCEQ)/ICQ
RC1=RC*10^-3
RC2=round(RC1)
disp(RC2,"The collector resistance is, RC(k-ohm) = (VCC - VCEQ) / ICQ = ")
IBQ=ICQ/beta
IBQ1=IBQ*10^6
disp(IBQ1,"The base current is, IBQ(uA) = ICQ / beta = ")
RB=(VCC-VBE)/IBQ
RB1=RB*10^-6
disp(RB1,"The base resistance is, RB(M-ohm) = (VCC - VBE(on)) / IBQ = ")