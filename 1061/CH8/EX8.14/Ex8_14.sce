//Ex:8.14
clc;
clear;
close;
ni=0.15;// internal quantam efficiency
vf=2.0;// forward voltage in volts
i_f=15*10^-3;// forward current in amp
x=25;// acceptance angle in degree
pi=vf*i_f;// input power in Watt
po=ni*pi;// output power in Watt
NA=(sin(x*3.14/180));
nc=NA^2;// numerical aperture
pf=nc*po;// optical power coupled into optical fiber in w
printf("The optical power coupled into optical fiber =%f mW ", pf*1000);