// Example 7.6.b;//optical power loss
clc;
clear;
close;
NA=0.2;//numerical aperture
n=1.4;//refractive index
nc=(NA)^2;//coupling efficiency
Loss=round(-(10*log10(nc)));//optical loss in dB
disp(Loss,"optical loss in dB is")
