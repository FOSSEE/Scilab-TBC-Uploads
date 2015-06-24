//Find the value of drain current
clear;
clc;
//soltion
//given
Vt=2;//V      //threshold voltage
K=0.25*10^-3;// A/V^2      //conductivity parameter
Vgs=3;//V    //gate supply
Vds=2;//V      //saturation voltage
Vdsm=Vgs-Vt;        //minimum voltage required to pinch off

// Vds > Vdsm therefore the device is in saturation region

Id=K*(Vgs-Vt)^2;
printf("The drain current is %.2f mA",Id*1000);
