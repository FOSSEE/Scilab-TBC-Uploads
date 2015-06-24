//Graphical//
//PROGRAM TO DESIGN AND OBTAIN THE FREQUENCY RESPONSE OF FIR FILTER
//Band PASS FILTER
clear;
clc;
close;
M = 11             //Filter length = 11
Wc = [%pi/4,3*%pi/4];        //Digital Cutoff frequency
Wc2 = Wc(2)
Wc1 = Wc(1)
Tuo = (M-1)/2     //Center Value
hd = zeros(1,M);
W = zeros(1,M);
for n = 1:11
  if (n == Tuo+1)
     hd(n) = (Wc2-Wc1)/%pi;
  else
        n
     hd(n) = (sin(Wc2*((n-1)-Tuo)) -sin(Wc1*((n-1)-Tuo)))/(((n-1)-Tuo)*%pi);
  end
  if(abs(hd(n))<(0.00001))
    hd(n)=0;
  end
end
hd;
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
plot(2*fr,hzm)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude');
title('Frequency Response 0f FIR BPF using Rectangular window M=11')
subplot(2,1,2)
plot(2*fr,hzm_dB)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude in dB');
title('Frequency Response 0f FIR BPF using Rectangular window M=11')
