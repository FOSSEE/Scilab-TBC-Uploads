//Calculate frequency and impedance and current at resonance and current in coil and capacitor
clear;
clc;
//soltion
//given

R=10;//ohm
L=100*10^-6;//H
C=100*10^-12;//F
Vs=10;//V
fo=1/(2*%pi*sqrt(L*C));
Zp=L/(C*R);     //impedance
printf("The Resonant frequency= %.3f MHz\n",fo/10^6);
printf("The impedance Z= %.0f kΩ\n",Zp/1000);

Io=Vs/Zp;
printf("The Source current= %.0f uA\n",Io*10^6);

Xl=(2*%pi*fo*L);
Xc=1/(2*%pi*fo*C);
Z1=sqrt(Xl^2+R^2);
Z2=Xc;
Ic=Vs/Z2;
Il=Ic;
printf("The current in the coil = %.0f mA\n",Il*1000);
printf("The current in the capacitor = %.0f mA\n",Ic*1000);
