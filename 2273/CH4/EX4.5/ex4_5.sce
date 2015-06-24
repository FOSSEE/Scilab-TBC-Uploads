//Find the loop inductance
clear;
clc;
//soltion
//given
r=1/2;//cm//radius of the conductor
re=r*exp(-1/4);
d12=200;//cm//spacing b/w 1&2
d11_=300;//cm//spacing b/w 1&1'
d12_=sqrt((300)^2+(200)^2);//cm//spacing b/w 1&2'
d21_=d12_;//cm//spacing b/w 2&1'
d22_=300;//cm//spacing b/w 2&2'
Dm=(d11_*d12_*d21_*d22_)^(1/4);
printf("Mutual GMD= %.3fcm\n",Dm);
Ds=(re*d12*re*d12)^(1/4);
printf("Self GMD= %.3fcm\n",Ds);
L=0.4*log(Dm/Ds);
printf("Loop Inductance of line= %.3fmH/km\n",L);
