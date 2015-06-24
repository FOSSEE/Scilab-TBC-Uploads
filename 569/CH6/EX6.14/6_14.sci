// calculating minimum, maximum time constants and value of frequencies
clc;
MXtc= 10^10*1000*10^-12;
disp(MXtc,'Maximum time constant (s)');
MNtc= 10^8*10*10^-12;
disp(MNtc,'Minimum time constant (s)');
AR=0.95;
fmin=(AR)/[2*%pi*MXtc*(1-AR^2)^0.5];
disp(fmin,'minimum frequency (Hz)')
fmax=(AR)/[2*%pi*MNtc*(1-AR^2)^0.5];
disp(fmax,'Maximum frequency (Hz)')