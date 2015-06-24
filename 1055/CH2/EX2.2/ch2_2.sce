//To dtermine inductance of a 3 phase line 
clear
clc;
GMD=0.7788*0.8/(2*100);
Mgmd=((1.6*3.2*1.6)^(1/3));
Z=2*(10^-4)*1000*log(2.015/.003115);
mprintf("The self GMD of the conductor =%.6f metres\n",GMD);
mprintf("The mutual GMD of the conductor =%.3f metres\n ",Mgmd);
mprintf("Inductance =%.3f mH/km\n",Z);
