clc;
close();
clear();
//page no 419
//prob no. 12.16
Ldb=6.02;  //db
L=10^(Ldb/10);
mprintf('Absloute loss ,L=%.0f\n',L);
Tp=290;  //K
//Noise temp  (K)
TeL=(L-1)*Tp;
Tepre=50;
Terec=200;
Gpre=10^(20/10);
Te=TeL+L*Tepre+L*Terec/Gpre;
mprintf('Noise Temperature ,Te=%.0f K\n',Te);

//Noise figures
F=1+Te/290;
mprintf('Noise figure ,F=%.4f\n',F);
mprintf('Noise figure ,F(dB)=%.3f  dB\n',10*log10(F));

