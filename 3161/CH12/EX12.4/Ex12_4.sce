clc;
//page 618
//problem 12.4

//Upper cut off frequecny fb = 3200 Hz
fM = 3200;

//Lower cut off frequecny fl = 300 Hz
fl = 300;

//Data rate fb = 32000 bps
fb = 32000;

//White noise power spectral density n
n = 2*10^(-9);

//Input Signal energy Si = 0.001
Si = 0.001;

//Output SNR is SNR_op
SNR_op = (0.6*(fb/fM)^3)/(1 + (0.3*(fb^2/(fl*fM)))*erfc(Si/(n*fb)));

disp('Output SNR  is '+string(10*log10(SNR_op))+'dB');

//Data rate fb_n = 32000 bps
fb_n = 2*32000;

//Output SNR is SNR_op_n
SNR_op_n = (0.6*(fb_n/fM)^3)/(1 + (0.3*(fb_n^2/(fl*fM)))*erfc(Si/(n*fb_n)));

disp('Output SNR when data rate is doubled is '+string(10*log10(SNR_op_n))+'dB');
