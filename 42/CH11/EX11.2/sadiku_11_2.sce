clear;
clc;
Zo=60,a=20*10^-3,u=.6*3*10^8, f=100*10^6;
R=a*Zo,disp(R,'R=');
L=Zo/u,disp(L*10^9,'L in nH=');
G=a*a/R,disp(G*10^6,'G in micro S per meter =');
C=1/(u*Zo),disp(C*10^12,'C in pF =');
l=u/f;disp(l,'l=');
