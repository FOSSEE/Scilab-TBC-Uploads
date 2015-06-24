//Determine rms value of the ac voltage
clear;
clc;
//soltion
//given

l=8.3;//cm         //length of the trace
D=5;// V/cm        //deflection sensitivity
Vpp=l*D;
Vrms=Vpp/(2*sqrt(2));
printf("The rms value of the ac voltage %.2f V",Vrms);
