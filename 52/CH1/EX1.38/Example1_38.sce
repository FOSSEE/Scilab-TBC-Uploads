//Example 1.38
//Program to Plot Magnitude and Phase Responce
//0.5delta(n)+delta(n-1)+0.5delta(n-2)
clear;
clc ;
close ;
w=-%pi:0.01:%pi;
H=0.5+exp(-%i*w)+0.5*exp(-%i*w);
//caluculation of Phase and Magnitude of H
[phase_H,m]=phasemag(H);
Hm=abs(H);
a=gca();
subplot(2,1,1);
a.y_location="origin";
plot2d(w/%pi,Hm);
xlabel('Frequency in Radians')
ylabel('abs(Hm)');
title('MAGNITUDE RESPONSE');
subplot(2,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(w/(2*%pi),phase_H);
xlabel('Frequency in Radians');
ylabel('<(H)');
title('PHASE RESPONSE');