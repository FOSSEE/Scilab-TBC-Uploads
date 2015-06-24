//Graphical//
//Figure 8.9 and 8.10
//PROGRAM TO DESIGN AND OBTAIN THE FREQUENCY RESPONSE OF FIR FILTER
//LOW PASS FILTER
clear;
clc;
close;
M = 61             //Filter length = 61
Wc = %pi/5;        //Digital Cutoff frequency
Tuo = (M-1)/2     //Center Value
for n = 1:M
    if (n == Tuo+1)
      hd(n) = Wc/%pi;
    else
      hd(n) =  sin(Wc*((n-1)-Tuo))/(((n-1)-Tuo)*%pi);
  end
end
//Rectangular Window
for n = 1:M
  W(n) = 1;
end
//Windowing Fitler Coefficients
h = hd.*W;
disp('Filter Coefficients are')
h;
[hzm,fr]=frmag(h,256);
hzm_dB = 20*log10(hzm)./max(hzm);
subplot(2,1,1)
plot(fr,hzm)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude');
title('Frequency Response 0f FIR LPF using Rectangular window M=61')
subplot(2,1,2)
plot(fr,hzm_dB)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude in dB');
title('Frequency Response 0f FIR LPF using Rectangular window M=61')
