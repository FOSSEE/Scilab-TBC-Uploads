//Find the inductance per phase of 30 km line
clear;
clc;
//soltion
//given
r=(15)/2;//mm//radius of the conductor
re=r*exp(-1/4);
d=1.5*1000;//mm//spacing
L=0.2*log(d/re);
printf("Loop Inductance of line= %.2f mH/km\n",L);
Ll=L*30/1000;
printf("Inductance per phase of 30 km long line= %.4f H",Ll);
