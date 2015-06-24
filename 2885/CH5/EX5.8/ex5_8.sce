//Calculate the dynamic drain resistance
clear;
clc;
//soltion
//given
gm=200*10^-6;//S          trans conductance
u=80;//         amplification factor
rd=u/gm;
printf("The dynamic drain resistance is %.0f kΩ",rd/1000);
