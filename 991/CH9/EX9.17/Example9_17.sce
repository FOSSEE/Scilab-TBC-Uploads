//Example 9.17. refer fig.10.66(b).
clc
format(6)
RD=5*10^3
RG=10*10^6
u=50
rd=35*10^3
disp("The voltage gain,")
Av=(-u*RD)/(RD+rd)
disp(Av,"      Av = Vo/Vi = -u*RD / RD+rd =")
disp("The minus sign indicates a 180 degree phase shift between Vi and Vo")
Zi=RG*10^-6
disp(Zi,"Input impedance  Zi(M-ohm) = RG =")
Zo=RD*10^-3
disp(Zo,"Output impedance  Zo(k-ohm) = RD =")