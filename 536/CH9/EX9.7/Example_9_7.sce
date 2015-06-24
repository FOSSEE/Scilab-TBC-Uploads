clc;
clear;

printf("\n Example 9.7\n");

k=2.5; //Thermal conductivity
DH=2e-7;//Thermal diffusivity of the surrounding fluid
h=100; //External heat transfer coefficient
To=293; //Initial Temperature
T_dash=373; //Oven Temperture
Tc=353; //temperature throughout the whole of the sheet reaches a minimum
l=10e-3; //thickness of sheet
L=l/2;

//For the given process, the Biot number
Bi=h*L/k;
Bi_1=1/Bi;
lim_val=(T_dash-Tc)/(T_dash-To);
//From Figure 9.17, the Fourier number
Fo=7.7; 
t=Fo*L^2/DH
printf("\n The minimum time for which the sheet must be heated = %.0f s or %.0f min approx.",t,t/60);