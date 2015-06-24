clc
disp("Example 2.40")
printf("\n")
disp("Estimate the value of capacitor required to keep ripple factor less than 1%")
Vm=325.27
f=50
Idc=10*10^-3
r=0.01
RL=Vm/Idc
C=(1/r)/(4*sqrt(3)*f*RL)
printf("capacitor required >\t%e Farad\n",C)
