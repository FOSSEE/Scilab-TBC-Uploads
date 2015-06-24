//Ex10_7 Pg-519
clc

Sr=15/1e-6 //slew rate in V/sec
Vp=10 //peak output voltage

fmax=Sr/(2*%pi*Vp) //Power Bandwidth
printf("Power Bandwidth = %.0f kHz",fmax*1e-3)
