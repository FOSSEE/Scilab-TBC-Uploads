clc;
close();
clear();
//page no 409
//prob no. 12.9
Gdb1=10;
Gdb2=15; 
Gdb3=25;
Gdb=Gdb1+Gdb2+Gdb3;  // net gain in dB
G=10^(Gdb/10);
mprintf('Absolute gain G=%i\n',G);
B=10^4;   //Hz
ni=10^-12;  //pW/Hz
No=ni*G*B;
mprintf(' Output Noise power ,No=%i mW',No*10^3);
