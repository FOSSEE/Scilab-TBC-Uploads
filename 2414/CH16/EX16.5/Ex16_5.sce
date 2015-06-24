clc;
close();
clear();
//page no 522
//prob no. 16.5
Pr=50*10^-12;  //in Watts
GtdB=3;  //dB
GrdB=4;  //dB
d=80;  //kilo-metre
f=500;   //frequency in MHz
PrdBW=10*log10(Pr);   //in dB conversion
mprintf('Pr(dBW)=%.2f  dBW\n',PrdBW)
alfa1_dB=20*log10(f)+20*log10(d)+32.44;  //path loss in dB
mprintf(' The path loss is, %.2f dB\n',alfa1_dB);
PtdBW=PrdBW+alfa1_dB-GtdB-GrdB;   //calculation of transmitted  power in dB
mprintf(' Pt(dBW)=%.2f  dBW\n',PtdBW)
Pt=10^(PtdBW/10);   //transmitted power in Watts
mprintf(' Pt=%.1f W ',Pt);
