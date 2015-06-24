// To determine the inductance of single phase Transmission line
clear
clc;
GMDa=0.001947;// GMD of conductor in group A
DSA=((.001947*6*12*.001947*6*6*0.001947*6*12)^(1/9));
DSB=sqrt(5*(10^-3)*.7788*6);
Dae=sqrt((9^2)+6^2);
Dcd=sqrt((12^2)+9^2);
DMA=((9*10.81*10.81*9*15*10.81)^(1/6));
LA=2*(10^-7)*(10^6)*log(DMA/DSA);
LB=2*(10^-7)*(10^6)*log(DMA/DSB);
Tot=LA+LB;
mprintf("inductance of line A,LA=%.3f mH/km\n",LA);//Answers don't match due to difference in rounding off of digits
mprintf("inductance of line B,LB=%.1f mH/km\n",LB);//Answers don't match due to difference in rounding off of digits
mprintf("total inductance of line =%.2f mH/km\n",Tot);//Answers don't match due to difference in rounding off of digits
