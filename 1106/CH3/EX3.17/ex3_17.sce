// Example 3.17, page no-136
clear
clc

slew=0.5
f=4.0*10^4
Vm=(slew*10^6)/(2*%pi*f)
printf('Vpeak= %.2f V',Vm)
Vmpp=2*Vm/10
printf('\nVoltage peak-to-peak= %.3f V',Vmpp)
