//Graphical//
//Example 8.2.3
//Low Pass FIlter of length M = 61
//Pass band Edge frequency fp = 0.1 and a Stop edge frequency fs = 0.15
// Choose the number of cosine functions and create a dense grid 
// in [0,0.1) and [0.15,0.5)
//magnitude for pass band = 1 & stop band = 0 (i.e) [1 0]
//Weighting function =[1 1]
clear;
clc;
close;
hn=eqfir(61,[0 .1;.15 .5],[1 0],[1 1]);
[hm,fr]=frmag(hn,256);
disp('The Filter Coefficients are:')
hn
figure
plot(fr,hm)
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude');
title('Frequency Response of FIR LPF using REMEZ algorithm M=61')
figure
plot(.5*(0:255)/256,20*log10(frmag(hn,256)));
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude in dB');
title('Frequency Response of FIR LPF using REMEZ algorithm M=61')
