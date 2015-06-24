//Example 24 //Velocity
clc;
clear;
close;
//given data :
c=3*10^8;// in m/s
lamda1=4000;// in Angustrom
lamda2=5000;// in Aungustrom
mu1=1.540;
mu2=1.530;
vg=c*((mu1*lamda1)-(mu2*lamda2))/(mu1*mu2*(lamda1-lamda2));
disp(vg,"The velocity,vg(m/s) = ")
