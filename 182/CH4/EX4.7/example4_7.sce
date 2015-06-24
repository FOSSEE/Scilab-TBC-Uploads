
// example 4-7 in page 107
clc;
// Given data
Iav=1e-3;//for, FSD the average meter current is 1 mA
Rm=1.2e+3;// coil resistance 1.2 K-ohm
E=100e-3;// ac input rms voltage=100 mV
//calculations
Ip=(2/0.637)*Iav;// peak current for half wave rectifier
Ep=E/0.707;// input peak voltage
R3=Ep/Ip;
printf("R3=%d ohm\n\n",R3);
printf("When E=50 mV,\n");
Ep=(50e-3)/0.707;
Ip=Ep/R3;
printf("meter deflection=Iav=%.1f mA\n",(0.637/2)*Ip*1000);//half scale
