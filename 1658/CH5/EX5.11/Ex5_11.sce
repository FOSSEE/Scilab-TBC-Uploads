clc;
VS=6;
R1=330;
R2=470;
VD=0.7;
RT=R1+R2;
I=(VS-0.7)/RT;
disp('mA',I*10**3,"I=");
