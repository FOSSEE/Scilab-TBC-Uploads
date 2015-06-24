//characteristic impedence
//given
clc
s=300//mm//
r=3/2//mm
Zo=276*log10(s/r)
Zo=round(Zo)///rounding off decimals
disp(Zo,'the characteristic impedence in ohm')
