// example:-12.3,page no.-677.
// program to calculate the input and output SNR.
f=4*10^9;B=1*10^6;Grf=10^2;Gif=10^3;Lt=10^0.15;Lm=10^0.6;To=290;
Fm=10^0.7;Tm=(Fm-1)*To;Tp=300;Tb=200;eta=0.9;
Frf=10^0.3;Fif=10^0.11;k=1.38*10^-23;
Trf=(Frf-1)*To;
Tif=(Fif-1)*To;
Trec=Trf+(Tm/Grf)+((Tif*Lm)/Grf);
Ttl=(Lt-1)*Tp;
Ta=eta*Tb+(1-eta)*Tp;
Ni=k*B*Ta;
Ni=10*log10(Ni/0.001);  // converting in to dBm.
si=-80; // in dBm.
SNRi=si-Ni; // input SNR.
Tsys=Ta+Ttl+Lt*Trec;
SNRo=si-10*log10((k*B*Tsys)/0.001);
disp(SNRi,'input SNR in dB = ')
disp(SNRo,'output SNR in dB = ')