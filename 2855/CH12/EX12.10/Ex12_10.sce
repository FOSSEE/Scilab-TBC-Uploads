//Chapter 12
//page no 444
//given
clc;
clear all;
L=200;     //in km
dL=1550;            //in nm
R=10;           //in Gb/s
Cd=17;          //in ps/nm-km
w=0.1;          //Assused bandwidth
Cd200=Cd*L;
printf("\n Dispersion by 200km ofc = %0.1f*10^3 ps/nm",Cd200/10^3);
TCd=w*Cd200;
printf("\n total chromatic  dispersion = %0.2f*10^3 ps",TCd/10^3);
