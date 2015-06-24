clc();
clear;
//Given :
delta_t = 1; // temperature in degrees
t1 = 27; // temperature in degrees
//Ratio = v2/v1 = 1+ (delta_t/(t1+273))
Ratio = 1 + (delta_t /(2*(t1+273)));
v1 = 343;// speed of sound at room temperature in m/s
v2 = v1*Ratio; // speed of sound in air in m/s
delta_v = v2-v1; // speed in m/s
printf("Ratio = %.4f  \n",Ratio);
printf("delta_v = %.1f m/s",delta_v);
