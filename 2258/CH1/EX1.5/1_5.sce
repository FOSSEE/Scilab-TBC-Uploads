clc();
clear;
// To calculate the uncertainity in momentum
deltax=0.2;   //distance in armstrong
delta_xm=deltax*10^-10;    //distance in m
h=6.626*10^(-34);
delta_p=h/(2*%pi*delta_xm);
printf("The uncertainity in momentum of electron in kg m/sec is");
disp(delta_p);
