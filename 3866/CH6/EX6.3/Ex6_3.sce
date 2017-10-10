clc; clear; close;

Wp=2;
Wn=3;
a=Wp+Wn;
mprintf('Worst case input capacitance: Cin= %dWCg',a);
b=3*Wn;
c=2*Wp;
d=b+c;
mprintf('\n\n Worst case output capacitance: Cout= %dWCeff',d);
