clc
clear
//input
vbe=2.5//voltage across base-emitter
hfe=75//current gain
rb=75*10^3 //base current
//calculation
rc=5*rb/(vbe*hfe)//collector load resistance
//output
printf("the collector load resistance is %2.2e ohm",rc)
