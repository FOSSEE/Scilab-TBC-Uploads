clc;
close();
clear();
//page no 520
//prob no. 16.2
c=3*10^8;  //speed of light
Pt=5    //W
GtdB=13;  //dB
GrdB=17;  //dB
d=80;  //in km
f=3;   //frequency in GHz

PtdBW=10*log10(Pt);
alfa1_dB=20*log10(f)+20*log10(d)+92.44;  //dB
mprintf('The path loss is,  alfa_1(dB) = %.2f dB\n',alfa1_dB);

PrdBW=PtdBW+GtdB+GrdB-alfa1_dB;   //calculation of recieved power in dB
mprintf(' Pr(dBW)=%.2f  dBW\n',PrdBW)
 
Pr=10^(PrdBW/10);   //recieved power in Watts
mprintf(' Pr=%.1f pW ',Pr*10^12);
