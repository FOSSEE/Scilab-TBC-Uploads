//Ex:5.24
clc;
clear;
close;
w=30;// line width in nm
L=1.5;// length in km
d1=6;// in ns/km
d2=85;// in ps/km/nm
d3=d2/1000;// in ns/km/nm
dt=d1*L;// intermodel dispersion in ns
dt1=w*d3*L;// intramodel dispersion in ns
dT=sqrt(dt^2+dt1^2);// total dispersion in ns
printf("The max dispersion =%d ns", dt);
printf("\n The max dispersion =%f ns", dt1);
printf("\n The max dispersion =%f ns", dT);
printf("\n answer in the textbook is wrong");