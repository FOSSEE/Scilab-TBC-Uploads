// Exa 3.7
// To calculate L50 path loss for a PCS system using Okumura and COST231 models.

clc;
clear all;

d=[1 2 3 4 5];  //in km
hb=30; //Height of BS antenna in metres
hm=2;// height of mobile antenna in matres
fc=900;//carrier frequency in MHz
W=15;  //street width(m)
b=30;  // distance between building along radio path (m) 
phi=90; // incident angle relative to the street
hr=30; //in m

//solution
dellhm=hr-hm;
//L50=Lf+Lrts+Lms
// By COST 231 model
Lf=32.4+20*log10(d)+20*log10(fc);
L0=4-0.114*(phi-55);
Lrts=-16.9-10*log10(W)+10*log10(fc)+20*log10(dellhm)+L0;
Lbsh=-18*log10(11);
ka=54-0.8*hb;
dellhb=hb-hr;
kd=18-15*dellhb/dellhm;
kf=4+0.7*(fc/925-1);
Lms=Lbsh+ka+kd*log10(d)+kf*log10(fc)-9*log10(b);
L50=[0 0 0 0 0];
L50=Lf+Lrts+Lms;
//Okumura/Hata model
ahm=(1.1*log10(fc)-0.7)*hm-(1.56*log10(fc)-0.8);
L_50=69.55+26.16*log10(fc)+(44.9-6.55*log10(hb))*log10(d)-13.82*log10(hb)-ahm;
xlabel("DISTANCE FROM TRANSMITTER IN KM");
ylabel("PATH LOSS in dB");
plot2d(d,[L50',L_50'],[1,2]);  
legends(['Cost 231 Model';'Okumura/Hata Model'],[1,2 ],opt=2)
xgrid();
disp("L50 values by Cost 231 model");
printf('%.2f  %.2f  %.2f  %.2f  %.2f \n ',L50(1),L50(2),L50(3),L50(4),L50(5));
disp("L50 values bu Okumura/Hata model");
printf('%.2f  %.2f  %.2f  %.2f  %.2f \n ',L_50(1),L_50(2),L_50(3),L_50(4),L_50(5));
disp("The results from the plot of two models shows that the calculated path loss with the COST 231 model is higher than the value obtained by the Okumura/Hata model.");
