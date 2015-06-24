// calculate the natural length of the spring and dispacement
clc;
P=100*10^3;
A=1500*10^-6;
F=P*A;
Cs=F/3;
Ls=Cs+40;
disp(Ls,'natural length of spring(mm)')
P1=10*10^3;
F1=P1*A;
Ss=3+2*.5;
D=F1/Ss;
disp(D,'displacement (mm)')
