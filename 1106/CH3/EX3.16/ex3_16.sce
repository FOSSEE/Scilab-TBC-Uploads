// Example 3.16, page no-136
clear
clc

A=50
slew=0.5
Vid=20*10^-3
Vm=A*Vid

fmax=(slew*10^6)/(2*%pi*Vm)
fmax=fmax/1000
printf('Fmax= %.1f kHz', fmax)
