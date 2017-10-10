clear;
clc;
I=[complex(0,0);complex(5.006,-2.89);complex(4.087,4.087)];
a=complex(-.5,.866);
A=[1 1 1;1 a^2 a;1 a a^2];
Ip=A*I;
mprintf("line currents  are \n");
disp(Ip);
