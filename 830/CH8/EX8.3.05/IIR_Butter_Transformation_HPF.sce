//Graphical//
//Example 8.3.05 
//First Order Butterworth Filter
//High Pass Filter
//Table 8.13: Using Digital Filter Transformation
clear;
clc;
close;
s = poly(0,'s');
Omegac = 0.2*%pi;
H = Omegac/(s+Omegac);
T =1;//Sampling period T = 1 Second
z = poly(0,'z');
Hz_LPF = horner(H,(2/T)*((z-1)/(z+1)));
alpha = -(cos((Omegac+Omegac)/2))/(cos((Omegac-Omegac)/2));
HZ_HPF=horner(H_LPF,-(z+alpha)/(1+alpha*z))
HW  =frmag(HZ_HPF(2),HZ_HPF(3),512);
W = 0:%pi/511:%pi;
plot(W/%pi,HW)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of Single pole HPF Filter Cutoff frequency = 0.2*pi','Digital Frequency--->','Magnitude');
