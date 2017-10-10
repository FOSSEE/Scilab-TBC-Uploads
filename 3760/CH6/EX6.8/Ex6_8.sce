clc;
E=0.9;
L=45000;
Tl=((1/0.9)-1)*L;

Rl=(Tl*2)/7; //According to the given conditoins
Pg=L+Rl+(Rl/2);

s=Rl/Pg;

mprintf('Slip is %f',s);
