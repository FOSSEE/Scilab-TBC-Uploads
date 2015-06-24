// 5.1
clc;
D=8*10^-3;
A=D^2;
disp(A,'A=')
J=8*10^-3;
K=16*10^-3;
B=4*J*K;
disp (B,'B=')
disp('since A<B so the instrument is underdamped')
th=(100*%pi)/180;
i=10*10^-3;
F=0.2*10^-6;
G=(K*th+F)/i;
l=65*10^-3;
d=25*10^-3;
N=G/(B*l*d);
printf("\nNumber of turns=%.0f ",N)
i=F/G*10^6;
printf("\ncurrent required to overcome friction=%.1f uA ",i)
