clc;
close();
clear();
//page no 419
//prob no. 12.17
Ldb=6.02;  //db
L=10^(Ldb/10);
mprintf('Absloute loss ,L=%.0f\n',L);
Tp=290;  //K
//Noise temp  (K)
TeL=(L-1)*Tp;
Tepre=50;
Terec=200;
Gpre=10^(20/10);
Te=Tepre+TeL/Gpre+L*Terec/Gpre;
mprintf(' (a) Noise Temperature ,Te=%.1f K\n',Te);

//Noise figures
F=1+Te/290;
mprintf(' (b) Noise figure ,F=%.2f\n',F);
mprintf('Noise figure ,F(dB)=%.3f  dB\n',10*log10(F));

