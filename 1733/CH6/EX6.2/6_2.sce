//6.2
clc;
Vo_max=250;
alph=30;
Vo=Vo_max*cosd(alph);
printf("RMS value of output voltage for firing angle 30 degree =%.1f V", Vo)
alph=45;
Vo=Vo_max*cosd(alph);
printf("\nRMS value of output voltage for firing angle 45 degree =%.2f V", Vo)