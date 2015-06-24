//Example 9.14. refer fig.9.58.
clc
rc=1.5*10^6
RE=4.7*10^3
Ro=2.2*10^3
RS=20
RL=10*10^3
VS=20*10^-3
VEE=9
VBE=0.7
IE=(VEE-VBE)/RE
format(6)
x1=IE*10^3
disp(x1,"We know that,  IE(mA) = VEE-VBE / RE =")
format(5)
re=0.026/IE
disp(re,"      re(ohm) = 0.026 / IE =")
Zi=(RE*re)/(RE+re)
disp(Zi,"      Zi(ohm) = RE || re =")
Zo=(Ro*rc)/(Ro+rc)
x2=Zo*10^-3
disp(x2,"      Zo(k-ohm) = RC || re =")
format(6)
Av=Zo/Zi
disp(Av,"      Av = Zo/Zi = RC||rc/RE||re =")
format(5)
x=Av*(Zi/(RS+Zi))*(RL/(RL+Zo))
disp(x,"      VL/VS = Av*(Zi/RS+Zi)*(RL/RL+Zo) =")
format(6)
y=x*VS
disp(y,"      VL(rms) = Av*VS(rms) =")