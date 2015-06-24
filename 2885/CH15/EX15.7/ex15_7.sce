//Determine rms value and frequency of the sine voltage
clear;
clc;
//soltion
//given

l=3.5;//cm         //length of the trace
D=2;// V/cm        //deflection sensitivity
Vpp=l*D;
Vrms=Vpp/sqrt(2);
printf("The rms value of the sine voltage = %.2f V\n",Vrms);
x=4;// cm         //one cycle length on x axis
t=0.5*10^-3;// s/cm    //timebase setting
T=x*t;
f=1/T;
printf("The frequency of the sine voltage = %.1f kHz",f/1000);
