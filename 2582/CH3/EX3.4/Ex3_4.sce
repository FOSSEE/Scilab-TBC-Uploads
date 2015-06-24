//Ex 3.4
clc;clear;close;
format('v',6);
FT1=1;//Filter Transmission
FT2=0.99;//Filter Transmission
FT3=0.9;//Filter Transmission
FT4=0.1;//Filter Transmission
A1=-20*log10(FT1);//dB
A2=-20*log10(FT2);//dB
A3=-20*log10(FT3);//dB
A4=-20*log10(FT4);//dB
disp(A1,"For filter transmission=1, Attenuation(dB)");
disp(A2,"For filter transmission=0.99, Attenuation(dB)");
disp(A3,"For filter transmission=0.9, Attenuation(dB)");
disp(A4,"For filter transmission=0.1, Attenuation(dB)");
//Answer in the book is wrong for 0.99 filter transmission.
