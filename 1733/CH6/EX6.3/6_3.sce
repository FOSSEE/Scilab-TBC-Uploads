//6.3
clc;
Vrms=230;
alph=0;
Vo=6*2^0.5*Vrms/(%pi*2^0.5)*sin(%pi/6)*cosd(alph);
printf("RMS value of output voltage for firing angle 0 degree =%.2f V", Vo)
alph=30;
Vo=6*2^0.5*Vrms/(%pi*2^0.5)*sin(%pi/6)*cosd(alph);
printf("\nRMS value of output voltage for firing angle 30 degree =%.1f V", Vo)