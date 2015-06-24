//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 379
clear;
clc;

//Given

Vm=12;//modulating signal peak to peak voltage in volts
Vc=9;//carrier wave peak amplitude in volts

//Solution

Emax=Vc+Vm/2;//maximum amplitude of AM signal in volts
Emin=Vc-Vm/2;//minimum amplitude of AM signal in volts
m=(Emax-Emin)/(Emax+Emin);//depth of modulation
L1_to_L2=Emin/Emax;//ratio of side lengths
printf("Depth of modulation = %.2f %%\n ",m*100);
printf("Ratio of side-lengths L1/L2 = %.1f",L1_to_L2);
