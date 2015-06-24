clear;
clc;

D1=1.2
D2=.6;
h=1;
H=10

DaP=sqrt((D1-(D2/2))^2+h^2)
DaQ=sqrt((D1+(D2/2))^2+h^2)

Ia=2000*exp(%i * 0);
si=2e-6* ((Ia * log(DaQ/DaP)))

V=2*%pi * 50* abs(si);

mprintf("voltage induced in telephone line = %.3f V/m", V)
