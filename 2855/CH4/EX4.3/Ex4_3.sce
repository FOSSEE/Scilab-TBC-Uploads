//Chapter 4
//page no 114
//given
clc;
R1=0.7;
R2=0.99;
ad=0.1;
//compute Ld
Ld=1-R1*R2*%e^-(2*ad);
printf("\n Decay Loss %0.4f \n",Ld);
trt=40;//fs
tph=trt/Ld;
printf("\n Photon lifetime %0.2f fs\n",tph);
BW=1/tph;
printf("\n Bandwidth %0.1f Thz\n",BW*1000);//Answer in Thz  

