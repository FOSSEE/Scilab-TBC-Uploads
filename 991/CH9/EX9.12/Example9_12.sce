//Example 9.12. refer fig 9.56
clc
RS=50
RE=2*10^3
Ro=1*10^3
RL=4*10^3
VEE=6
VBE=0.7
RC=1000
VS=10*10^-3
format(5)
IE=(VEE-VBE)/RE
x1=IE*10^3
disp("We know that,  IE = VEE-VBE / RE")
disp(x1,"Therefore,  IE(mA) =")
re=0.026/IE
disp(re,"      Zb(ohm) = re(ohm) =")
Zi=(re*RE)/(re+RE)
disp(Zi,"      Zi(ohm) = re || RE =")
format(6)
Av=RC/re
disp(Av,"      Av = RC / re =")
x=Av*(re/(re+RS))*(RL/(RL+RC))
disp(x,"      VL / VS = Av*(re/re+RS)*(RL/RL+RS) =")
VL=x*VS
x2=VL*10^3
disp(x2,"      VL(in mV (rms)) = Av*VS =")
iL=VL/RL
format(5)
x3=iL*10^6
disp(x3,"      iL( in uA (rms)) = VL / RL =")
alpha=1
format(6)
y=alpha*(RS/(RS+re))*(RC/(RC+RL))
disp(y,"      iL / iS = alpha*(RS/RS+re)*(RC/RC+RL) =")