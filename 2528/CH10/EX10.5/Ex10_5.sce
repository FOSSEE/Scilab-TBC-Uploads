//Chapter 10
//range of Differentiation & Sketch the output Waveform 
//page no.  365
//Example10_5
//Figure 10.19
//Given
clc;
clear;
Ri=100;           //in Ohm
Ci=10^-8;           //in farad
Rf=5000;           //in Ohm
Cf=10^-10;           //in farad
fhf=1/(2*%pi*Rf*Cf);
fh_in=1/(2*%pi*Ri*Ci);
printf("\n Fhigh(f dbk)=%.0f Hz",fhf);
printf("\n Fhigh(in)=%.0f Hz",fh_in);
//graph is drawn taking function sin(t) 
t=[0:0.01:15];
Vi=sin(t);
plot(2*Vi);
plot(diff(-1.885*100*Vi));
xtitle("Partial Differentiator of sin(t)","t","V");

xgrid;
