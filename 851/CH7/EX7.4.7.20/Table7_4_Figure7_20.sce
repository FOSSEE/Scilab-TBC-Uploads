//clear//
//Caption:Comparison of error probability of different data transmission schemes
//Table7.4:Figure 7.20
//Comparison of Symbol Error Probability
//of Different Digital Transmission System
clear;
close;
clc;
//Eb =  Energy of the bit  No = Noise Spectral Density
Eb_No =[18,0.3162278];
x = Eb_No(2):1/100:Eb_No(1);
x_dB = 10*log10(x);
for i = 1:length(x)
  //Error Probability of Coherent BPSK 
  Pe_BPSK(i) = (1/2)*erfc(sqrt(x(i)));
  //Error Probability of Coherent BFSK
  Pe_BFSK(i) = (1/2)*erfc(sqrt(x(i)/2));
  //Error Probability Non-Coherent PSK = DPSK 
  Pe_DPSK(i) = (1/2)*exp(-x(i));
  //Error Probability Non-Coherent FSK
  Pe_NFSK(i) = (1/2)*exp(-(x(i)/2));
  //Error Probability of QPSK & MSK
  Pe_QPSK_MSK(i) = erfc(sqrt(x(i)))-((1/4)*(erfc(sqrt(x(i)))^2));
end
a = gca();
a.data_bounds=[-5,0;12.5,0.5]; 
plot2d(x_dB,Pe_BPSK)
plot2d(x_dB,Pe_BFSK)
poly1= a.children(1).children(1);
poly1.foreground = 3;
plot2d(x_dB,Pe_DPSK)
poly1= a.children(1).children(1);
poly1.foreground = 4;
plot2d(x_dB,Pe_NFSK)
poly1= a.children(1).children(1);
poly1.foreground = 6;
plot2d(x_dB,Pe_QPSK_MSK)
poly1= a.children(1).children(1);
poly1.foreground = 7;
xlabel('Eb/No in dB ---->')
ylabel('Probability of Error Pe--->')
title('Comparison of Noise Performance of different PSK & FSK Scheme')
legend(['BPSK','BFSK','DPSK','Non-Coherent FSK','QPSK & MSK'])
xgrid(1)
