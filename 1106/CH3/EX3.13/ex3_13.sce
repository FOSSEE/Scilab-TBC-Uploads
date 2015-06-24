// Example 3.13, page no-135
clear
clc

slew=0.5
f=10*10^3
Vmmax=slew/(2*%pi*f)
Vmmax=Vmmax*10^6
printf('Vm(max)= %.2f Hz',Vmmax)


