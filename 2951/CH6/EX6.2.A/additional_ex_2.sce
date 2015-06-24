clc;
clear;

Inp_sig_pow=1.5*10^(-9); //Input Signal Power in Watts
Inp_noi_pow=1.5*10^(-18); //Input Noise Power in Watts
Pow_gain=10^(6);
int_noi=4*10^(-12); //internal noise in watts

//a)
Inp_SNR=10*log10(Inp_sig_pow/Inp_noi_pow);// input SNR in dB

//b)
Nout=Pow_gain*Inp_noi_pow+int_noi //output output noise power

Pout=Pow_gain*Inp_sig_pow //output signal power

SNR=Pout/Nout;// Signal to Noise ratio
SNRout=10*log10(SNR);// Output SNR in dB

//c)
F=10^(9)/(273*10^(6)); //Noise factor
NF=10*log10(F);// Noise figure in dB

disp("Input SNR (in dB) is");
disp(Inp_SNR);
disp("Output SNR ( in dB) is");
disp(SNRout);
disp("Noise factor");
disp(F);
disp("Noise Figure(in dB)");
disp(NF);
