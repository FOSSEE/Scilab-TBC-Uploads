clc
disp("Example 2.41")
printf("\n")
disp("Calculate minimum value of capacitance used in the filter to keep ripple voltage below 2%")
Vm=282.84
f=50
Idc=12*10^-3
r=0.02
RL=Vm/Idc
C=(1/r)/(4*sqrt(3)*f*RL)
printf("capacitor required >\t%e Farad\n",C)
