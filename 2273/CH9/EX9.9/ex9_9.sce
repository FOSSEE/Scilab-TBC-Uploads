//find radial thickness and safe working voltage of cable
clear;
clc;
//soltion
//given
d=6;//cm
D=18;//cm
e1=5;//realtive permeabilty
e2=4;//realtive permeabilty
g1max=30;//kV/cm
g2max=20;//kV/cm
d1=g1max*e1*d/(g2max*e2);
tin=(d1-d)/2;
printf("Radial thickness of inner dielectric= %.3f cm \n",tin);
tout=(D-d1)/2;
printf("Radial thickness of outer dielectric= %.3f cm \n",tout);
Vper=(g1max/2)*[d*log(d1/d)]+(g2max/2)*(d1*log(D/d1));
Vsafe=Vper/sqrt(2);
printf("Safe working voltage for a cable(rms)= %.2f kV\n",Vsafe);
