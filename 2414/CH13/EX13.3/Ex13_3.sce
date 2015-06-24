clc;
close();
clear();
//page no 447
//prob no. 13.3
k=1.38*10^-23;   //Boltzmann's const
//Temperatures in K
Ti=150;
Te=325;
Tsys=Ti+Te;
mprintf(' Tsys=%i K \n',Tsys);
D=5;
W=15;   //kHz
B=2*(1+D)*W;
mprintf('  B=%i  kHz\n',B);
Nsys=k*Tsys*B*10^3;   //W
mprintf('  Nsys=%.3f fW\n',Nsys*10^15);
PR=50*10^-12;   //W
SNsys=PR/Nsys; 
mprintf('  (S/N)sys=%i  \n',SNsys);
GR=3*(1+D)*D^2
mprintf('  GR=%.0f  \n',GR);
SNoutput=GR*SNsys;
mprintf('  (S/N)output=%.0f  \n',SNoutput);
mprintf('  (S/N)out,dB=%.2f  dB\n',10*log10(SNoutput));
mprintf('  (S/N)sys,dB=%.2f  dB\n',10*log10(SNsys));
GRdb=10*log10(GR);
mprintf('  GR,dB=%.2f dB \n',GRdb);
mprintf('  (S/N)output,dB=%.2f  dB\n',10*log10(SNoutput));


