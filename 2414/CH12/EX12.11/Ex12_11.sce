clc;
close();
clear();
//page no 412
//prob no. 12.11
Fdb=5;
T0=290;  //K
F=10^(Fdb/10);
mprintf('Noise figure, F=%.3f\n',F);
Te=(F-1)*T0;
mprintf(' Noise Temperature , Te=%i K ',Te);
