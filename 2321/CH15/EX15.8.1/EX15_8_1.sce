//Example No. 15.8.1
clc;
clear;
close;
format('v',11);
fc_E=2.5;//MHz(critical frequency of E-layer)
fc_F=8.4;//MHz(critical frequency of F-layer)
disp("For E-layer : ");
Nm=(fc_E*10^6)^2/81;//per m^3(Maximum electron density)
disp(Nm,"Maximum electron density  in per m^3 : ");
disp("For F-layer : ");
Nm=(fc_F*10^6)^2/81;//per m^3(Maximum electron density)
disp(Nm,"Maximum electron density  in per m^3 : ");
