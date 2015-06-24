clc;
close();
clear();
//page no 414
//prob no. 12.13
//Data from ex-12
T0=290;  //K
Fdb=9;
F=10^(Fdb/10);
F=8;   //Approximate
Te=(F-1)*T0;
Ti=T0;
k=1.38*10^-23;   //Boltzmann's Constant
B=2*10^6;  //Hz
Ni=k*Ti*B;  //W
Pi=8*10^-12;   //W
SNinput=Pi/Ni;
SNinputdb=10*log10(SNinput);
//Ex13 calculation
SNoutputdB=SNinputdb-Fdb;
mprintf('  S:Noutput(db)=%.0f dB\n',SNoutputdB);
