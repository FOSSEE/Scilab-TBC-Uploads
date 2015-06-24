clc
disp("Example 6.15")
printf("\n")
disp("calculate the maximum frequency at which output is faithful reproduction of input")
printf("given")
disp("slew rate=3Mv/s")
sr=3*10^6
Vm=12
//calculate Frequency
fmax=(sr/(2*%pi*Vm))
printf("maximum frequency=%d hz",fmax)
