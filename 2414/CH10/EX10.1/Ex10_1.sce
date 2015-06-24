clc;
close();
clear();
//page no 350
//prob no. 10.1
B=4;   //kHz
C=2*B;
mprintf('(a) C=%ikbits/s\n',C);
C=2*B*log2(4);
mprintf(' (b) for 4-level encoding ,C=%ikbits/s\n',C);
C=2*B*log2(128);
mprintf(' (c) for 128-level encoding ,C=%ikbits/s',C);
