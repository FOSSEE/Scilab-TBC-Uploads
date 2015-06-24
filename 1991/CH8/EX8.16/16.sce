clc
clear
//input
c=65*10^-6 //capcacitor
v=12 //voltage
f=90 //frequency
//calculation
vmax=v*sqrt(2)//peak pd
qmax=c*vmax//from eqn Q=CV
irms=v*2*%pi*f*c//maximum charge from capacitor reactance
//output
printf("the maximum charge is %3.3f A",irms)
