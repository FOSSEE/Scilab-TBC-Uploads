//clear//
//Example 4.6
// Continuous Time Fourier Transform of Symmetric
// periodic Square waveform
clear;
clc;
close;
// CTFT
T1 = 2;
T = 4*T1;
Wo = 2*%pi/T;
W = -%pi:Wo:%pi;
delta = ones(1,length(W));
XW(1) = (2*%pi*Wo*T1/%pi);
mid_value = ceil(length(W)/2);
for k = 2:mid_value
  XW(k) = (2*%pi*sin((k-1)*Wo*T1)/(%pi*(k-1)));
end
figure
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',W(mid_value:$),XW,2);
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d3('gnn',W(1:mid_value-1),XW($:-1:2),2);
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
xlabel('W in radians/Seconds');
title('Continuous Time Fourier Transform of Periodic Square Wave')
