//Determine input and output power and efficiency
clear;
clc;
//soltion
//given

Vcc=20;//V     //supply voltage
Rl=4;//Ω
Vp=15;//V
Ip=Vp/Rl;
Idc=Ip/%pi;
Pi=Vcc*Idc;
Po=((Vp/2)^2)/Rl;
n=100*Po/Pi;
printf("Input power %.2f W\n",Pi);
printf("Output power %.2f W\n",Po);
printf("Efficiency = %.0f percent\n",n);

