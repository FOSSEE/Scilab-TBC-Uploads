//Calculate max current and check will the capacitor act as short for given frequency
clear;
clc;
//soltion
//given

C=100*10^-6;//Farad
Rs=1*10^3;//ohm
Rl=4*10^3;//ohm
Vs=1;//V
Imax=Vs/(Rs+Rl);
fc=1/(2*%pi*(Rs+Rl)*C)     //critical frequency
fh=10*fc;                  //Border frequency
printf("Maximum current is %.0f uA\n",Imax*10^6);
printf("fh = %.2f Hz\n",fh);
printf("As long as source frequency is greater than %.2f Hz, the coupling capacitor acts like an ac short for 20Hz to 20kHz.",fh)

//In book Imax is 200mA but there is misprinting of 'm' in mA it should be uA
