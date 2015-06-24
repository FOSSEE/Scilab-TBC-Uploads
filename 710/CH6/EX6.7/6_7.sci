clc();
clear;
//To determine the refractive index of quartz
r=33;                              //angle of refraction
ip=90-r;                           //polarising angle
mew=tand(ip)                      //refractive index of quartz
printf("The refractive index of quartz is %f",mew);