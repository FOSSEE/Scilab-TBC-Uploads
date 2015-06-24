//Graphical//
//Example 8.2.2
//Design of FIR Filter using Frequecny Sampling Technique
//Low Pass Filter Design
clear;
clc;
close;
M =32;
T1 = 0.3789795; //for alpha = 0 (Type I)
Hr = [1,1,1,1,1,1,T1,0,0,0,0,0,0,0,0,0];
for k =1:length(Hr)
    G(k)=((-1)^(k-1))*Hr(k);
end
h = zeros(1,M);
U = (M-1)/2
for n = 1:M
  h1 = 0;
  for k = 2:U+1
    h1 =G(k)*cos((2*%pi/M)*(k-1)*((n-1)+(1/2)))+h1; 
  end
 h(n) = (1/M)* (G(1)+2*h1);
end
h
[hzm,fr]=frmag(h,256);
hzm_dB = 20*log10(hzm)./max(hzm);
figure
plot(2*fr,hzm)
a=gca();
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude');
title('Frequency Response 0f FIR LPF using Frequency Sampling Technique with M = 15 with Cutoff Frequency = 0.466')
xgrid(2)
figure
plot(2*fr,hzm_dB)
a=gca();
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude in dB');
title('Frequency Response 0f FIR LPF using Frequency Sampling Technique with M = 15 with Cutoff Frequency = 0.466')
xgrid(2)
