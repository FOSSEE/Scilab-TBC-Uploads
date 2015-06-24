clc;
close();
clear();
//page no 413
//prob no. 12.12
T0=290;  //K
Fdb=9;
F=10^(Fdb/10);
mprintf('Absolute Noise figure, F=%.3f=8(Approx)\n',F);
F=8;   //Approximate
Te=(F-1)*T0;
mprintf(' Noise Temperature , Te=%i K \n',Te);
Ti=T0;
k=1.38*10^-23;   //Boltzmann's Constant
B=2*10^6;  //Hz
Ni=k*Ti*B;  //W
mprintf(' (a) Input source Noise ratio , Ni=%i fW\n ',Ni*10^15);
Pi=8*10^-12;   //W
SNinput=Pi/Ni;
mprintf('(b) Input source signal to noise ratio S:Ninput=%.0f\n',SNinput);
mprintf('  Corresponding dB value S;Ninput(db)=%.0f dB\n',10*log10(SNinput));
Gdb=50;
G=10^(Gdb/10);
Po=G*Pi;  //W
mprintf('(c) The output signal power, Po=%i nW\n',Po*10^9);
Tsys=Ti+Te;
No=G*k*Tsys*B;  //W
mprintf('(d) output noise power No=%.2f nw\n',No*10^9);
SNoutput=Po/No;
mprintf('(e) Output signal to noise ratio S:Noutput=%.0f\n',SNoutput);
mprintf('  Corresponding dB value S;Noutput(db)=%.0f dB\n',10*log10(SNoutput));
