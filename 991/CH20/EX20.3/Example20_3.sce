//Example 20.3.
clc
format(5)
disp("The 741C has typical slew rate of 0.5 V/us. Using Eq.(20.8), the slew rate is,")
disp("      SR = 2*pi*f*Vm / 10^6 = 0.5 V/us")
vm=50*(20*10^-3) // in volts
disp(vm,"The maximum output voltage,  Vm(V) = A*Vid =")
disp("The maximum frequency of the input for which undistorted output is obtained is given by,")
f=(0.5*10^6)/(2*%pi*1) // in kHz
x1=f*10^-3
disp(x1,"     fmax = SR*10^6 / 2*pi*Vm =")