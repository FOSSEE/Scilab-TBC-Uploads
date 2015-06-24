//Example 9.18. refer fig.9.67(b)
clc
format(6)
RS=4*10^3
RG=10*10^6
u=50
rd=35*10^3
disp("The voltage gain,")
Av=(u*RS)/(((1+u)*RS)+rd)
disp(Av,"      Av = Vo/Vi = u*RS / (u+1)*RS+rd =")
disp("The positive value indicates that Vo and Vi are in-phase and further note that Av < 1 for CD amplifier.")
disp("Input impedance,  Zi = RG = 10 M-ohm")
x=rd/u
Zo=(x*RS)/(RS+x)
disp(Zo,"Output impedance,  Zo(ohm) = 1/gm || RS = (rd/u) || RS =")