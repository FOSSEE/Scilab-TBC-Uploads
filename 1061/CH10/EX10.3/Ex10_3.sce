//Ex:10.3
clc;
clear;
close;
p=0.5*10^-9;// pulse broadening in s/km
L=12;// length in km
Pt=p*sqrt(L);// with mode coupling, the total rms broadening in s
BT=20*10^6;//
DL=2*(2*Pt*BT*sqrt(2))^4;// dispersion equalization penalty in dB
Pt1=p*L;// without mode coupling, the total rms broadening in s
DL1=2*(2*Pt1*BT*sqrt(2))^4;// without mode coupling, equalization penalty in dB
DL2=2*(2*Pt1*150*10^6*sqrt(2))^4;// without mode coupling,dispersion equalization penalty with 125 Mb/s
DL3=2*(2*Pt*125*10^6*sqrt(2))^4;// with mode coupling,dispersion equalization penalty with 125 Mb/s
printf("with mode coupling, the total rms broadening =%f ns", Pt*10^9);
printf("\n The dispersion equalization penalty =%f dB", DL*10^4);
printf("\n without mode coupling, the total rms broadening =%f dB", Pt1*10^9);
printf("\n without mode coupling, equalization penalty =%f dB", DL1);
printf("\n without mode coupling,dispersion equalization penalty with 125 Mb/s =%f dB", DL2);
printf("\n with mode coupling,dispersion equalization penalty with 125 Mb/s =%f dB", DL3);
printf("\n The answer is wrong in the textbook");