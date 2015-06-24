///Example 9.21
clc
disp("The frequency of output is given by,")
f=(1.44/(12*0.01*10^-3))*10^-3
format(3)
disp(f,"  f(in kHz) = 1.44 / (R_A+2*R_B)*C =")
disp("The duty cycle is given by,")
d=8/12
format(7)
disp(d,"  D = R_A+R_B / R_A+2*R_B =")
disp("Thus the duty cycle 66.67%")
