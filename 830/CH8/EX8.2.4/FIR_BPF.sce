//Graphical//
//Example 8.2.4
//Band Pass FIlter of length M = 32
//Lower Cutoff frequency fp = 0.2 and Upper Cutoff frequency fs = 0.35
// Choose the number of cosine functions and create a dense grid 
// in [0,0.1) and [0.2,0.35] and [0.425,0.5]
//magnitude for pass band = 1 & stop band = 0 (i.e) [0 1 0]
//Weighting function =[10 1 10]
clear;
clc;
close;
hn = 0;
hm = 0;
hn=eqfir(32,[0 .1;.2 .35;.425 .5],[0 1 0],[10 1 10]);
[hm,fr]=frmag(hn,256);
disp('The Filter Coefficients are:')
hn
figure
plot(fr,hm)
a =gca();
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude');
title('Frequency Response of FIR BPF using REMEZ algorithm M=32')
xgrid(2)
figure
plot(.5*(0:255)/256,20*log10(frmag(hn,256)));
a = gca();
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude in dB');
title('Frequency Response of FIR BPF using REMEZ algorithm M=32')
xgrid(2)
