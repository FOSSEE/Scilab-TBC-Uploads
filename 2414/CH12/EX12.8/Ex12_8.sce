clc;
close();
clear();
//page no 409
//prob no. 12.8
ns=6*10^-18;   //W/Hz
k=1.38*10^-23;
Ts=ns/k;
mprintf('(a) Equilant source temperature is Ts=%.0f K\n',Ts);
Gdb=43;  //gain in dB
G=10^(Gdb/10);
mprintf(' (b) Absolute gain G=%.3f\n',G);
G=20*10^3;   //Approximate
Si=ns;
So=G*Si;
mprintf('Output spectral density So(f)=%.0f fW/Hz\n',So*10^15);
B=12*10^6;   //Hz
no=So;
No=no*B;
mprintf(' (c)Total Output Noise power ,No=%.3f micro-W',No*10^6);
