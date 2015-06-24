// Example 3.5 page no-164
clear
clc
rf=0.02
f=60
w=2*%pi*f
lc=sqrt(2)/(rf*12*w^2)
printf("\nLC=%.1f micro",lc*10^6)
vdc=9
idc=0.1
Rl=vdc/idc
printf("\nRL = %d Ohm\n\n LC>  Rl/3w  >  Rl/1130\n But LC should be 25%% larger\ntherefore, for f= 60 Hz,the value ofLC should be > Rl/900",Rl)
lc1=Rl/900
printf("\nIf L=0.1H, then C=%.1f micro F, This is high value\nIf L=1H, then C=41.5 micro F",ceil(lc*10^6/lc1))
printf("\n\nTransformer Rating:")
vdc=vdc+5
vm=vdc*%pi/2
vrms=vm/sqrt(2)
printf("\nVdc=%.0fV\nVm=%.0fV\nVrms=%.1fV\nTherefore, a 15.5 - 0 -15.5 V, 1OOmA transformer is required\n PIV=%d V",vdc,ceil(vm),vrms,2*ceil(vm))
