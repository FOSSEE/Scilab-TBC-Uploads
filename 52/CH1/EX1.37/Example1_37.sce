//Example 1.37
//Program to Plot Magnitude and Phase Responce
//y(n)=1/2[x(n)+x(n-2)]
clear;
clc ;
close ;
w=0:0.01:%pi;
H=(1+cos(2*w)-%i*sin(2*w))/2;
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