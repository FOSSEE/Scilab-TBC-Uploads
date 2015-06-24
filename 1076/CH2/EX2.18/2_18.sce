clear;
clc;
clear;


dia=26.88;
d=450
d1=15.25*1e3;

R=dia/2;
R1= .7788 * R;
R1=round(R1*100)/100
GMR= 1.09 * (R1 * d*d*d)^(.25);
GMR=round(GMR*10)/10
GMD=(d1* d1 * (2*d1))^(1/3);
GMD=round(GMD/10)*10
L=.4605 * log10 (GMD/GMR);

mprintf(" L= %.4f mH/km", L);
