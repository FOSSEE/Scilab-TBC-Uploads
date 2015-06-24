clc;
// page no 411
// prob no 12_3
f=200*10^3;
fb=270.833 *10^3;
data_rate=270.833 *10^3
fc=880*10^6;
bandwidth=200*10^3;
freq_shift=0.5*fb;
disp('Hz',freq_shift,'a)The frequency shift is');
// The shift each way from the carrier frequency is half the freq_shift
f_max=fc+0.25*fb;
disp('Hz',f_max,'b)The maximum frequency is');
f_min=fc-0.25*fb;
disp('Hz',f_min,'The minimum frequency is');
bandwidth_efficiency=data_rate/bandwidth;
disp('b/s/Hz',bandwidth_efficiency,'The bandwidth efficiency in b/s/Hz is');