clc;
//page no 122
//prob no. 3.9
// refer fig 3.14
// from spectrum we can see that each of the two sidebands is 20dB below the ref level of 10dBm. Therefore each sideband has a power of -10dBm i.e. 100uW.
power_of_each_sideband = 100;
Total_power = 2* power_of_each_sideband;
disp('uW',Total_power,'The total power is');
div=4; freq_per_div=1;
sideband_separation = div * freq_per_div;
f_mod= sideband_separation/2;
disp('kHz',f_mod,'The modulating freq is ');
// Even if this siganl has no carrier, it still has a carrier freq which is midway between the two sidebands. Therefore
carrier_freq = 10;
disp('MHz',carrier_freq,'The carrier freq');