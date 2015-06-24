//Example 20.4.
clc
format(5)
disp("The 741C has typical slew rate of 0.5 V/us. Using Eq.(20.8), the slew rate is,")
disp("      SR = 2*pi*f*Vm / 10^6 = 0.5 V/us")
vm=(0.5*10^6)/(2*%pi*(40*10^3)) // in volts
disp("    = 3.98 V peak-to-peak",vm,"The maximum output voltage,  Vm(V peak-to-peak) = SR*10^6 / 2*pi*f =")
disp("The maximum peak-to-peak input voltage for undistorted output is,")
vid=3.98/10 // in volts
format(6)
disp(vid,"      Vid(V peak-to-peak) = Vm/A =")