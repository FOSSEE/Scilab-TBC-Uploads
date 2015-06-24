clear
clc

G=100
f=50
H=5
dL=50
t=.6


J = G*H*1e3;
dJ=dL*1e3*t
f2=sqrt((J-dJ)/J)*f
fd=(f-f2)/f;
mprintf("Freq deviation = %.3f percent", fd*1e2)
