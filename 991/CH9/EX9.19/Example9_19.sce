//Example 9.19. refer fig.9.68(b)
clc
format(5)
RD=2*10^3
RS=1*10^3
gm=1.43*10^-3
rd=35*10^3
disp("The voltage gain,")
Av=(((gm*rd)+1)*RD)/(RD+rd)
disp(Av,"   Av = Vo/Vi = (gm*rd + 1)*RD / (RD+rd) =")
x=1/gm
Zi=(RS*x)/(RS+x)
x1=Zi*10^-3
disp(x1,"Input impedance,  Zi(k-ohm) = RS || 1/gm =")
disp("Output impedance,  Zo ~ RD = 2 k-ohm")