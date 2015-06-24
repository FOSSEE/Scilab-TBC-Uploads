//Ex:5.29
clc;
clear;
close;
n1=1.48;// core refractive index
y=900;// operating wavelength in nm
yo=1343;// wavelength in nm
so=0.095;// in ps/nm^2-km
L=1.5;// in km
dy=50;//in nm
dl=0.002;
c=3*10^8;// the speed of ligth in m/s
Dm=(so*y/4)*(1-(yo/y)^4);// inps/nm-km
Dm1=Dm*(-1);// do not consider -ve sign
Vd=0.26;
Dw=((n1*dl)/(c*y*10^-9))*(Vd);
DW=Dw*10^6;// in ps/nm-km
dt=DW*L*dy;// pulse spreading in ps
dt1=dt/100;// pulse spreading in ns
printf("The pulse spreading =%f ps", dt1);