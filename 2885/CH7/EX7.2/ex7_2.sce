//Check whether the capacitor is an effective bypass for the signal currents of lowest frequency 20 Hz
clear;
clc;
//soltion
//given

C=100*10^-6;//Farad
Rs=1*10^3;//ohm
Rl=4*10^3;//ohm
f=20;//Hz          //lowest frequency
Xc=1/(2*%pi*f*C)         //reactance of capacitor at 20Hz
Rth=Rs*Rl/(Rs+Rl);      //Thevenin's equivalent resistance
printf("Xc < Rth/10 = %.1f Ω < %.1f Ω is satisfied\n",Xc,Rth/10);
printf("The capacitor of 100uF will work as a good bypass for frequencies greater than 20 Hz ")
