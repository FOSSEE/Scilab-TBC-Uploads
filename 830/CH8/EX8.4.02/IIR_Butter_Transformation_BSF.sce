//Graphical//
//Example 8.4.02
//To Design an Digital IIR Butterworth Filter from Analog IIR Butterworth Filter
//and to plot its magnitude response
//TRANSFORMATION OF LPF TO BSF USING DIGITAL TRANSFORMATION
clear;
clc;
close;
omegaP = 0.2*%pi;
omegaL =  (2/5)*%pi;                 
omegaU =  (3/5)*%pi;       
z=poly(0,'z');
H_LPF = (0.245)*(1+(z^-1))/(1-0.509*(z^-1))
alpha = (cos((omegaU+omegaL)/2)/cos((omegaU-omegaL)/2));
k = tan((omegaU - omegaL)/2)*tan(omegaP/2);
NUM =((z^2)-((2*alpha/(1+k))*z)+((1-k)/(1+k)));
DEN = (1-((2*alpha/(1+k))*z)+(((1-k)/(1+k))*(z^2)));
HZ_BPF=horner(H_LPF,NUM/DEN)
HW  =frmag(HZ_BPF(2),HZ_BPF(3),512);
W = 0:%pi/511:%pi;
plot(W/%pi,HW)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of BSF Filter','Digital Frequency--->','Magnitude');
