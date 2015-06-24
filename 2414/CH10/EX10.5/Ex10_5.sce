clc;
close();
clear();
//page no 352
//prob no. 10.5
B=20;   //kHz
C=160;  //kb/s
M=2^(C/B/2);
mprintf('(a) Number of encoding levels ,M= %i\n',M);
SN=2^(C/B)-1;
SNdb=10*log10(SN)   //S/N in db

mprintf(' (b) S/N= %i  S/N(db)=%.2f dB',SN,SNdb);
