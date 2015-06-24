//Find the total inductance of the line
clear;
clc;
//soltion
//given
r=1.4;//cm//radius of the conductor
re=r*exp(-1/4);
d12=20;//cm//spacing b/w 1&2
d11_=20+120;//cm//spacing b/w 1&1'
d12_=20+120+20;//cm//spacing b/w 1&2'
d21_=120;//cm//spacing b/w 2&1'
d22_=20+120;//cm//spacing b/w 2&2'
Dm=(d11_*d12_*d21_*d22_)^(1/4);
printf("Mutual GMD= %.2fcm\n",Dm);
Ds=floor((re*d12*re*d12)^(1/4)*100)/100;
printf("Self GMD= %.2fcm\n",Ds);
L=0.4*log(Dm/Ds);
printf("Loop Inductance of line= %.5f mH/km",L);
