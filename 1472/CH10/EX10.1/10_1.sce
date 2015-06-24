clc
//initialization of varaibles
P=100 //psia
hfg=888.8 //B/lb
//calculations
disp("From steam tables,")
vg=4.432 //cu ft/lb
vf=0.001774 //cu ft/lb
W=P*(vg-vf)*144
ufg=807.1 //B/lb
W=hfg-ufg
sfg=1.1286
Q=788*sfg
//results
printf("Work done = %.1f B/lb",W)
printf("\n Heat of vaporization of water = %d B/lb",Q)
