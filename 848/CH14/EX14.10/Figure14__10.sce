//clear//
//Caption:Performance Measurement and Monitoring
//Figure:14.10 Plotting pulse shape of gaussian distribution 
//and determining 3-dB optical and electrical bandwidth
clear;
close;
clc;
sigma = 1;
t = -3*sigma:0.01:3*sigma;
p = (1/(sigma*sqrt(2*%pi)))*exp(-t^2./(2*sigma^2));
fdB_optical = 0.187/sigma;
fdB_electrical = 0.133/sigma;
disp(fdB_optical,'fdB_optical')
disp(fdB_electrical,'fdB_electrical')
plot(t,p,'r')
xlabel('Time t')
ylabel('Relative pulse amplitude P(t)')
title('Figure:14.10 Definitions of pulse-shape parameters')
xgrid(1)
//Result
//fdB_optical    = 0.187  
//fdB_electrical = 0.133  
