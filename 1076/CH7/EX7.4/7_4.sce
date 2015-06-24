clear;
clc;

f=50;
d=9e-3;
l=3.5;
h=16;
dc=.5;
hp=4

ha= round((sqrt(3)*l/2)*100)/100;
DaP=ha+hp;
DaQ=DaP+dc;

DbP=round(sqrt((l/2)^2+hp^2) *100)/100
DcP=DbP
DbQ=round(sqrt((l/2)^2+(hp+dc)^2) *100)/100
DcQ=DbQ

Ia=200*exp(%i * 0);
Ib=200*exp(%i *-2* %pi/3);
Ic=200*exp(%i *2* %pi/3);

si=2e-7* ((Ia * log(DaQ/DaP))+(Ib * log(DbQ/DbP))+(Ic * log(DcQ/DcP)))

V=2*%pi * 50* abs(si);

mprintf("voltage induced in telephone line = %.3f e-3V/m", V*1e3)
