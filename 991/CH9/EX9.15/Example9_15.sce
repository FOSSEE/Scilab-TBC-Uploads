//Example 9.15.refer fig.9.59.
clc
beta=100
VCC=10
R2=4.7*10^3
R1=27*10^3
RE=680
RC=3.3*10^3
RS=600
RL=15*10^3
disp("Referring to fig.9.59(a),")
format(5)
VB=(10*4.7*10^3)/((27*10^3)+(4.7*10^3))
disp(VB,"      VB(V) = (R2 / R1+R2)*VCC =")  // answer in textbook is wrong
VE=1.39-0.7
disp(VE,"      VE(V) = 1.39 - 0.7 =")
format(4)
IE=VE/RE
x1=IE*10^3
disp(x1,"      IE(mA) = VE / RE =")
re=0.026/IE
disp(re,"      re(ohm) = 0.026/IE =")
x=beta*(re+RE)
format(5)
Zi=(R1*R2*x)/((R2*x)+(R1*x)+(R1+R2))  // answer in textbook is wrong
x2=Zi*10^-3
disp(x2,"      Zi(k-ohm) = R1 || R2 || beta*(re+RE) =")
format(4)
y=(-RC/(RE+re))*(Zi/(RS+Zi))*(RL/(RC+RL))
disp(y,"The overall voltage gain is VL/VS = (-RC/RE+re)*(Zi/RS+Zi)*(RL/RC+RL) =")
disp("Referring to fig.9.59(b),")
format(5)
u=beta*re
Zi=(R1*R2*u)/((R2*u)+(R1*u)+(R1*R2))
x3=Zi*10^-3
disp(x3,"      Zi(k-ohm) = R1 || R2 || betare =")
z=(-RC/re)*(Zi/(RS+Zi))*(RL/(RC+RL))  // answer in textbook is wrong
disp(z,"      VL/VS = (-RC/re)*(Zi/RS+Zi)*(RL/RC+RL) =")