//Graphical//
//Example 12.1.1
//Determination of spectrum of a signal
//With maximum normalized frequency f = 0.1
//using Rectangular window and Blackmann window
clear;
close;
clc;
N = 61;
cfreq = [0.1 0];
[wft,wfm,fr]=wfir('lp',N,cfreq,'re',0);
wft;                // Time domain filter coefficients
wfm;                // Frequency domain filter values
fr;                 // Frequency sample points
WFM_dB = 20*log10(wfm);//Frequency response in dB
for n = 1:N
 h_balckmann(n)=0.42-0.5*cos(2*%pi*n/(N-1))+0.08*cos(4*%pi*n/(N-1));
end
wft_blmn = wft'.*h_balckmann;
wfm_blmn = frmag(wft_blmn,length(fr));
WFM_blmn_dB =20*log10(wfm_blmn);
subplot(2,1,1)
plot2d(fr,WFM_dB)
xtitle('Frequency Response of Rectangular window Filtered output M = 61','Frequency in cycles per samples  f','Energy density in dB')
subplot(2,1,2)
plot2d(fr,WFM_blmn_dB)
xtitle('Frequency Response of Blackmann window Filtered output M = 61','Frequency in cycles per samples  f','Energy density in dB')
