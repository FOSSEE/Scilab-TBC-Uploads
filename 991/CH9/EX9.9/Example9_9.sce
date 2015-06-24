//Example 9.9. refer fig 9.52.
clc
format(6)
VBE=0.6
VEE=8
VCC=10
RE=4*10^3
RC=3*10^3
IE=(VEE-VBE)/RE
x1=IE*10^3
disp(x1,"      |IE|(mA) = VEE-VBE / RE =")
re=(26*10^-3)/IE
disp(re,"      re(ohm) = 26mV / IE =")
Zi=(RE*re)/(RE+re)
disp(Zi,"      Zi(ohm) = RE || re =")
Zo=RC*10^-3
disp(Zo,"      Zo(k-ohm) = RC =")
format(7)
Av=3000/14.05
disp(Av,"      Av = RC / re =")
disp("      AI = 1")