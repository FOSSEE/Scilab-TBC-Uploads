//Ex:5.28
clc;
clear;
close;
y=900;// operating wavelength in nm
yo=1343;// wavelength in nm
so=0.095;// in ps/nm^2-km
L=150;// in km
dy=50;//in nm
Dy=(so*y/4)*(1-(yo/y)^4);// inps/nm-km
Dy1=Dy*(-1);// do not consider -ve sign
dt=Dy1*L*dy;// pulse spreading in ps
dt1=dt/1000;// pulse spreading in ns
printf("The pulse spreading =%f ns", dt1);