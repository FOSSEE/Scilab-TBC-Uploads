clear;
clc;
v=[complex(100,0);complex(-75,129.90);complex(-105,-181.865)];
a=complex(-.5,.866);
A=[1 1 1;1 a^2 a;1 a a^2];
vs=inv(A)*v;
mprintf("symmetrical components of phase voltages are \n");
disp(vs);
