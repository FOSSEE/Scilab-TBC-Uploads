//Ex:3.22
clc;
clear;
close;
y=1.2;// operating wavelength in um
w=5;// spot size in um
x=(2*y)/(%pi*w);// the divergence angle in degree
printf("The divergence angle =%f degree", x);