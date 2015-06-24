//Example 9.13.refer fig.9.57.
clc
RC=12*10^3
RL=15*10^3
RS=10
RE=22*10^3
VEE=24
VBE=0.3
disp("The emitter current of the common base amplifier is")
format(8)
IE=(VEE-VBE)/RE
disp(IE,"      IE(A) = VEE-VBE / RE =")
format(6)
re=0.026/IE
disp(re,"      re(ohm) = 0.026 / IE =")
format(5)
Av=RC/re
disp(Av,"      Av = RC /re =")
format(8)
x=497*(24.14/(24.14+10))*((15*10^3)/((12*10^3)+(15*10^3)))
disp(x,"      VL/VS = Av*(re/re+RS)*(RL/RL+RC) =")
format(6)
Ai=3.413
y=Ai*(RS/(RS+re))*(RC/(RC+RL))
disp(y,"      iL/iS = Ai*(RS/RS+re)*(RC/RC+RL) =")