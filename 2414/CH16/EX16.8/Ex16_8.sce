clc;
close();
clear();
//page no 528
//prob no. 16.8
Pt=10000;  //Watts
Gt=25;     //dB
f=3;        //GHz
d=50;     //km
sigma=20   //radar cross section in m^2
alfa2_dB=20*log10(f)+40*log10(d)+163.43-10*log10(sigma);   //alfa2(dB) calculation
mprintf(' The two way path loss is,alfa2(dB)= %.2f dB\n',alfa2_dB);
PtdBW=10*log10(Pt);   //transmitted  power in dB
mprintf(' Pt(dBW)=%i  dBW\n',PtdBW)
PrdBW=PtdBW+2*Gt-alfa2_dB   //dBW
mprintf(' Pr(dBW)=%.2f dBW \n',PrdBW);
Pr=10^(PrdBW/10);
mprintf(' Pr=%.2f fW',Pr*10^15);
