// calculating number of turns and current
clc;
D=8*10^-3;
A=D^2;
disp(A,'A=')
J=8*10^-3;
K=16*10^-3;
B=4*J*K;
disp (B,'B=')
disp('since A<B so the instrument is underdanped')
th=(100*%pi)/180;
i=10*10^-3;
F=0.2*10^-6;
G=(K*th+F)/i;
l=65*10^-3;
d=25*10^-3;
N=G/(B*l*d);
disp(N,'number of turns=')
i=F/G;
disp(i,'current required to overcome friction (A)')