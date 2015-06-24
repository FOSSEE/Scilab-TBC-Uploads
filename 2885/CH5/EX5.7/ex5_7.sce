//Find the value of Id
clear;
clc;
//soltion
//given
Vt=1.5;//V      //threshold voltage
Id=2*10^-3;//A
Vgs=3;//V    //gate supply
Vds=5;//V      //saturation voltage
Vdsm=Vgs-Vt;        //minimum voltage required to pinch off

// Vds > Vdsm therefore the device is in saturation region

// Calculating K
K=Id/((Vgs-Vt)^2);       // A/V^2      //conductivity parameter

//Calculating Id for Vgs= 5 V and Vds= 6 V
Vgs=5;//V    //gate supply
Vds=6;//V      //saturation voltage
Id=K*((Vgs-Vt)^2);
printf("The drain current is %.2f mA",Id*1000);
