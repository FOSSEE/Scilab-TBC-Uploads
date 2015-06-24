//Ex:5.46
clc;
clear;
close;
h=300;// height in km
fmuh=15*10^6;// in Hz
// we know that u=sqrt(1-81N/f^2)
u=0.8;// refractive index
//then 0.8^2=1-81N/f^2");
// fc=9*sqrt(Nmax)
// 0.36=fc^2/fmuh^2
fc=sqrt(0.36*fmuh^2);// in Hz
fc1=fc/10^6;// cut off frequancy in MHz
printf("The cut off frequancy, fc= %d MHz", fc1);
// skip distance D=2*(h+D^2/8R^2)*sqrt((fmuh/fc)^2-1)
// D=2*(300+D^2/8*6370)*sqrt((15/9)^2-1)
// D^2-19.11*10^3D+15.29*10^16=0
// after solve this equation, we get D=18.27*10^6 meter
D=18.27*10^6;// skip distance in meter
printf("\n The skip distance = %f*10^6 meter", D/10^6);