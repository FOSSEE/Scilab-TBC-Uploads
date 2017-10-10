//Ex 3.17 page 128

clc;
clear;
close;


n=3;// no. of phase
Vs=400;// V
f=50;// Hz
alpha = %pi/4;// radian
Io=10;// A
Vo=360;// V

// Vo=n*Vs*sqrt(2)/%pi/sqrt(2)-3*2*%pi*f*Ls*Io/%pi
Ls=(n*Vs*sqrt(2)/%pi/sqrt(2)-Vo)/(3*2*%pi*f)/(Io/%pi)*1000;// mH
R=Vo/Io;// ohm
printf(' Load resistance = %.f ohm',R)
printf('\n Source inductance = %.1f mH',Ls)
// Vo = n*Vs*sqrt(2)/%pi*cos(alpha+mu)+3*2*%pi*f*Ls*Io/%pi
mu=acos((Vo-3*2*%pi*f*Ls/1000*Io/%pi)/(n*Vs*sqrt(2)/%pi))-alpha;// radian
mu=mu*180/%pi;// degree
printf('\n Overlap angle = %.d degree',mu)
