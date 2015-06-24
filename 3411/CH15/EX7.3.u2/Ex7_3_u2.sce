//Example 7_3_u2
clc();
clear;
//To find the drift velocity and diffusivity
vp=1/(100*10^-6)           //units in cm/sec
eapp=50
up=vp/eapp        //units in cm^-2 V^-1 s^-1
k=0.0259
dp=(k*up)             //units in cm^2/s
printf("The drift velocity is Vp=%d cm/sec\n",vp)
printf("The diffusivity of minority carriers is Dp=%.2f cm^2/sec",dp)
