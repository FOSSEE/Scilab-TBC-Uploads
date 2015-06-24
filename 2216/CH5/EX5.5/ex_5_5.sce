// Example 5.5:splice loss
clc;
clear;
close;
format('v',5)
h1=1.30;//in micro meter
wp1=4.6155;//in micro meter
h2=1.55;//in micro meter
wp2=5.355;//in micro meter
sl1=4.34*(1/wp1)^2;//splice loss in dB
sl2=4.34*(1/wp2)^2;//splice loss in dB
disp(sl1,"splice loss in dB when wavelength is 1.30 micro meter")
disp(sl2,"splice loss in dB when wavelength is 1.55 micro meter")
