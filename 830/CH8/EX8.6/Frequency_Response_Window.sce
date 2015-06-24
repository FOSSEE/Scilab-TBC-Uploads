//Graphical//
//Figure 8.6 and Figure 8.7
//Program to frequency response of
//(1) Hanning window (2)Hamming window for M = 31 and M = 61
clear;
close;
clc
M1 = 31;
M2 = 61;
for n = 1:M1
  h_hann_31(n) = 0.5-0.5*cos(2*%pi*(n-1)/(M1-1));
  h_hamm_31(n) = 0.54-0.46*cos(2*%pi*(n-1)/(M1-1));
end
for n = 1:M2
  h_hann_61(n) = 0.5-0.5*cos(2*%pi*(n-1)/(M2-1));
  h_hamm_61(n) = 0.54-0.46*cos(2*%pi*(n-1)/(M2-1));
end
subplot(2,1,1)
[h_hann_31_M,fr]=frmag(h_hann_31,512);
[h_hann_61_M,fr]=frmag(h_hann_61,512);
h_hann_31_M = 20*log10(h_hann_31_M./max(h_hann_31_M));
h_hann_61_M = = 20*log10(h_hann_61_M./max(h_hann_61_M));
plot2d(fr,h_hann_31_M,2);
plot2d(fr,h_hann_61_M,5); 
legend(['Length M = 31';'Length M = 61']);
title('Frequency Response 0f Hanning window')
subplot(2,1,2)
[h_hamm_31_M,fr]=frmag(h_hamm_31,512);
[h_hamm_61_M,fr]=frmag(h_hamm_61,512);
h_hamm_31_M = 20*log10(h_hamm_31_M./max(h_hamm_31_M));
h_hamm_61_M = = 20*log10(h_hamm_61_M./max(h_hamm_61_M));
plot2d(fr,h_hamm_31_M,2);
plot2d(fr,h_hamm_61_M,5); 
legend(['Length M = 31';'Length M = 61']);
title('Frequency Response of Hamming window')
