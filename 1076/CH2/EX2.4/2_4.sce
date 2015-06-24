clear
clc;
rad=1.81;
Dist1=6*100;
Dist2=Dist1;
Dist3=12*100;
Reff=.7788*rad;
Dist=(Dist1*Dist2*Dist3)^(1/3);
L = .4605 * log10(Dist/Reff);
mprintf("L=%.4f mH/km",L);
