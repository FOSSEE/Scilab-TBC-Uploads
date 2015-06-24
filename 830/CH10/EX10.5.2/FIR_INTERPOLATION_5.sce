//Graphical//
//Example 10.5.2
//Interpolation by 5, Filter Length = 30
//Cutoff Frequency Wc = %pi/5
//Pass band Edge frequency fp = 0.1 and a Stop band edge frequency fs = 0.16
// Choose the number of cosine functions and create a dense grid 
// in [0,0.1) and [0.16,0.5)
//magnitude for pass band = 1 & stop band = 0 (i.e) [1 0]
//Weighting function =[3 1]
clear;
clc;
close;
M = 30;  //Filter Length
I = 5;  //Interpolation Factor = 5
Wc = %pi/5;  //Cutoff Frequency
Wp = Wc/(2*%pi);  //Passband Edge Frequency
Ws = 0.16;  //Stopband Edge Frequency
hn=eqfir(M,[0 Wp;Ws .5],[1 0],[3 1]);
[hm,fr]=frmag(hn,256);
disp('The LPF Filter Coefficients are:')
hn
//Obtaining Polyphase Filter Coefficients from hn
p = zeros(I,M/I);
for k = 1:I
  for n = 1:(length(hn)/I)
    p(k,n) = hn(I*(n-1)+k);
  end
end
disp('The Polyphase Interpolator for I =5 are:')
p
figure
plot(fr,hm)
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude');
title('Frequency Response of FIR LPF using REMEZ algorithm M=61')
figure
plot(.5*(0:255)/256,20*log10(frmag(hn,256)));
xlabel('Normalized Digital Frequency fr');
ylabel('Magnitude in dB');
title('Frequency Response of INTERPOLATOR(I=5) using REMEZ algorithm M=30')
