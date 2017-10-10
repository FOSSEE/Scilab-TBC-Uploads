//Example 7_8 page no:268
clc;
Zrel=15;
Zimg=-20;
Imag=50/30;
Iang=0-0;
P=(Imag*Imag)*Zrel//maximum power delivered
disp(P,"the maximum power delivered to the load is (in W)");//Imag^2 val is rounded in text book so answer vary by 0.333
