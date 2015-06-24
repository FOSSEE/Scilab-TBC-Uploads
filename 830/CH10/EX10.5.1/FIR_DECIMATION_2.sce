//Graphical//
//Example 10.5.1
//Decimation by 2, Filter Length = 30
//Cutoff Frequency Wc = %pi/2
//Pass band Edge frequency fp = 0.25 and a Stop band edge frequency fs = 0.31
// Choose the number of cosine functions and create a dense grid 
// in [0,0.25] and [0.31,0.5]
//magnitude for pass band = 1 & stop band = 0 (i.e) [1 0]
//Weighting function =[2 1]
clear;
clc;
close;
M = 30;  //Filter Length
D = 2;  //Decimation Factor = 2
Wc = %pi/2;  //Cutoff Frequency
Wp = Wc/(2*%pi);  //Passband Edge Frequency
Ws = 0.31;  //Stopband Edge Frequency
hn=eqfir(M,[0 Wp;Ws .5],[1 0],[2 1]);
[hm,fr]=frmag(hn,256);
disp('The LPF Filter Coefficients are:')
hn
//Obtaining Polyphase Filter Coefficients from hn
p = zeros(D,M/D);
for k = 1:D
  for n = 1:(length(hn)/D)
    p(k,n) = hn(D*(n-1)+k);
  end
end
disp('The Polyphase Decimator for D =2 are:')
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
title('Frequency Response of DECIMATOR (D=2) using REMEZ algorithm M=30')
