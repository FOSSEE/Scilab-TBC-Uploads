//Ex 4.5 page 160

clc;
clear;
close;


R=10;// ohm
Vs=230;// V
f=50;// Hz
fi = 45;// degree

Vmax=Vs;// V(max supply voltage)
XL=R*tan(fi*%pi/180);// ohm
Z=XL*sqrt(2);// ohm
Imax=Vs/Z;//A

printf('\n max load voltage = %.2f V', Vmax)
printf('\n max load current = %.3f A', Imax)
printf('\n range of delay angle = %d to %d',0,fi)
