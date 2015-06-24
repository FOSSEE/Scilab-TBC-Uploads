//Calculate frequency and impedance and current and voltage across each element at resonance
clear;
clc;
//soltion
//given

R=12;//ohm
L=200*10^-6;//H
C=300*10^-12;//F
Vs=9;//V
fo=1/(2*%pi*sqrt(L*C));
Z=R;     //impedance
printf("The Resonant frequency= %.1f kHz\n",fo/1000);
printf("The impedance Z= %.0f Ω\n",Z);

Io=Vs/R;
printf("The Source current= %.2f A\n",Io);

Vl=Io*(2*%pi*fo*L);
Vc=Io/(2*%pi*fo*C);
Vr=Io*R;
printf("The voltage across the inductor =%.1f V\n",Vl);
printf("The voltage across the capacitor =%.1f V\n",Vc);
printf("The voltage across the resistor =%.0f V\n",Vr);
//There is a slight variation in voltage across capacitor due to the approaximation
