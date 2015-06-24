clc;
// page no 144
// prob no 4_18_1
//A receiver with noise fig. 12dB fed by low noise amplr with gain  50 dB with noise temp of 90 k
f=12;
Tm=290;//Room temp value 
T=90;
g=50;
//calculating power ratio
F=10^(f/10);
G=10^(g/10);
//Determination of equivalent noise at room temp
Tem=(F-1)*Tm;
disp('K',Tem,'The value of equivalent noise at room temp is');
//Determination of equivalent noise at 90 k temp
Te=T+(Tem/G);
disp('K',Te,'The value of equivalent noise at noise temp=90 is');