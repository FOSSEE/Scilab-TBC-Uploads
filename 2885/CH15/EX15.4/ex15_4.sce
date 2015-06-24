//Calculate multiplier resistance and voltage multiplying factor
clear;
clc;
//soltion
//given

Im=50*10^-6;//A
Rm=1000;//ohm
V=50;//V
Rs=V/Im-Rm;
printf("The value of multiplier resistance is %.0f kΩ\n",Rs/1000);
Vm=Im*Rm;
n=V/Vm;
printf("Voltage multiplying factor =%.0f",n);
