clear;
clc;

D1=1.2
D2=.6;
h=1;
H=10

DaP=sqrt((D1-(D2/2))^2+1)
DcQ=DaP
DbP=sqrt(((D2/2))^2+1)
DbQ=DbP
DcP=sqrt((D1+(D2/2))^2+1)
DaQ=DcP

Ia=300*exp(%i * 0);
Ib=300*exp(%i *-2* %pi/3);
Ic=300*exp(%i *2* %pi/3);

si=2e-7* ((Ia * log(DaQ/DaP))+(Ib * log(DbQ/DbP))+(Ic * log(DcQ/DcP)))

V=2*%pi * 50* abs(si);

mprintf("voltage induced in telephone line = %.2f e-3V/m", V*1e3)
