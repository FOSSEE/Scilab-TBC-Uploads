//Ex:10.5
clc;
clear;
close;
Tx=-80;// transmitter output in dBm
Rx=-40;// receiver sensitivity in dBm
sm=32;// system margin in dB
L=10;// in km
fl=2*L;// fider loss in dB
cl=1;// detector coupling loss in dB
tl=0.4*8;// total splicing loss in dB
ae=5;// angle effects & future splice in dB
ta=29.2;// total attenuation in dB
Ep=2.8;// excess power margin in dB
printf("The fider loss =%f dB", fl);
printf("\n The total splicing loss =%f dB", tl);
printf("\n The fangle effects & future splice =%f dB", ae);
printf("\n The total attenuation =%f dB", ta);
printf("\n The excess power margin =%f dB", Ep);
printf("\n hence the system can operate with small excess power margin")