//1.24
clc;
Vc=100;
IL=40;
t_off=40*10^-6*1.5;
C=IL*t_off/Vc;
printf("The value of capacitor= %.6f F",C)
//L>(VC^2*C/IL^2);
//IC_peak=Vc*(C/L)^0.5;
//IC_peak should be less than maximum load current so if L=2*10^-4
L=2*10^-4;
IC_peak=Vc*(C/L)^0.5;
printf("\nPeak capacitor current= %.2f A",IC_peak)
disp('Since the peak capacitor current less than maximum load current 40 A so  L=2*10^-4 and C=24uF')

