clear;
clc;

Z=complex(14.1, 51.48);
Y=complex(0, 1.194e-3);
Zc=sqrt(Z/Y);
g=sqrt(Z*Y);
A=cosh(g);
B=Zc* sinh(g);
C=sinh(g)/Zc;
D=A;

mprintf("\nZc= %s", string(round(abs(Zc)*1000)/1000) +'/_'+ string(round(atand(imag(Zc)/real(Zc))*100)/100) )
mprintf("\npropgation const= %s", string(round(abs(g)*1000)/1000) +'/_'+ string(round(atand(imag(g)/real(g))*100)/100) )
mprintf("\nA= %s", string(round(abs(A)*1000)/1000) +'/_'+ string(round(atand(imag(A)/real(A))*100)/100) )
mprintf("\nB= %s", string(round(abs(B)*1000)/1000) +'/_'+ string(round(atand(imag(B)/real(B))*100)/100) )
mprintf("\nC= %s", string(round(abs(C)*1000)/1000) +'/_'+ string(round(atand(imag(C)/real(C))*100)/100 +180) )
mprintf("\nD= %s", string(round(abs(D)*1000)/1000) +'/_'+ string(round(atand(imag(D)/real(D))*100)/100) )
