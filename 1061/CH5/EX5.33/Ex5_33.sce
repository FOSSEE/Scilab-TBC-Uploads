//Exa:5.33
clc;
clear;
close;
n1=1.48;// core refractive index
dl=0.01;// refractive index difference
c=3*10^8;// the speed of light in m/s
y=1.55;// wavelength in um
DM=7;// in ps/nm-km
DW=(-1)*DM;// in ps/nm-km
X=-10^12*(n1*dl)/(c*y);// in ps/nm/km
Z=(DW/X)-0.08;// 
V=2.834-sqrt(Z/0.549);
a=(V*y)/(2*%pi*n1*sqrt(2*dl));// core radius in um
printf("The core radius =%f um", a);