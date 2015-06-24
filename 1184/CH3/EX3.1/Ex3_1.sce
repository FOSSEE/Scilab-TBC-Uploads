//Example 3-1, Page No - 99

clear
clc

Vmax = 5.9
Vmin = 1.2

m = (Vmax-Vmin)/(Vmax+Vmin)
Vc = (Vmax+Vmin)/2
Vm = (Vmax-Vmin)/2

m = Vm/Vc
printf('The modulation index is %.3f',m)
printf('\n Vc=%.1f\tVm=%.1f (for 2 volt/div on verticle scale) ',Vc,Vm)
