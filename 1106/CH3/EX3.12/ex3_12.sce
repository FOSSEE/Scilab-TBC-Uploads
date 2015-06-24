// Example 3.12, page no-135
clear
clc
//Part A
slew=0.5
Vm=12
fmax=slew/(2*%pi*Vm)
fmax=fmax*1000
printf('Fmax= %.1f kHz',fmax)

// Part B
Vm1=2
fmax1=slew/(2*%pi*Vm1)
fmax1=fmax1*1000
printf('\nFmax1= %.1f kHz',fmax1)
