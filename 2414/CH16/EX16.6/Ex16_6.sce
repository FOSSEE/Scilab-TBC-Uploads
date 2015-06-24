clc;
close();
clear();
//page no 523
//prob no. 16.6
Pr=200;  //in f-Watts
GtdB=30;  //dB
GrdB=20;  //dB
d=40000;  //kilo-metre
f=4;   //frequency in GHz
PrdBf=10*log10(Pr);   //in dBf conversion
mprintf('Pr(dBf)=%.2f  dBf\n',PrdBf)
alfa1_dB=20*log10(f)+20*log10(d)+92.44;  //path loss in dB
mprintf(' The path loss is, %.2f dB\n',alfa1_dB);
PtdBf=PrdBf+alfa1_dB-GtdB-GrdB;   //calculation of transmitted  power in dBf
PtdBW=PtdBf-150;   //calculation of transmitted  power in dBW
mprintf(' Pt(dBf)=%.2f  dBf OR %.2f dBW\n',PtdBf,PtdBW)
Pt=10^(PtdBW/10);   //transmitted power in Watts
mprintf(' Pt=%.2f W ',Pt);
