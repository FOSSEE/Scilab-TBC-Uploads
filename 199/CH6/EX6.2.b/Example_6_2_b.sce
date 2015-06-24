// Chapter6
// Page.No-193, Figure.No-6.4(c)
// Example_6_2_b
// Max output voltage swing
// Given
clear;clc;
R1=100*10^3;R2=100*10^3;R3=100*10^3;Rf=1*10^6;Rin=50;
Ci=0.1*10^-6; // Capacitance b/w 2 stages being coupled
Ro=Rin; // ac output resistance of the 1st stage
UGB=10^6; // Unity gain bandwidth
Vcc=15;
printf("\n The ideal maximum output voltage swing is = %.f V pp \n",Vcc)