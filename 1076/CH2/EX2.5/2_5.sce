clear
clc;
d=25;
rad=1.573;
Ds=.7788*rad;
Dsb=((Ds*d*d*sqrt(2)*d)^4)^(1/16);
mprintf("GMR= %.3f cm",fix(Dsb*1000)/1000);
