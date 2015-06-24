clear;
clc;

f=50;
dia=9e-3;
l=3.5;
h=16;
dc=.5;
hp=4

ha= round((sqrt(3)*l/2)*100)/100;
DaP=ha+hp;
DaQ=DaP+dc;
H=ha+h;

DbP=round((sqrt((l/2)^2+hp^2))*100)/100;
DcP=DbP
DbQ=round((sqrt((l/2)^2+(hp+dc)^2))*100)/100;
DcQ=DbQ

r=dia/2;

Va=132e3*exp(%i * 0)/sqrt(3);
Vb=132e3*exp(%i *-2* %pi/3)/sqrt(3);
Vc=132e3*exp(%i *2* %pi/3)/sqrt(3);

Vpa=Va * (log(((2*H) - DaP)/DaP)/log(((2*H) - r)/r))
Vpb=Vb * (log(((2*h) - DbP)/DbP)/log(((2*h) - r)/r))
Vpc=Vc * (log(((2*h) - DcP)/DcP)/log(((2*h) - r)/r))

Vp=Vpa+Vpb+Vpc;
mprintf("Potential of P= %.0f V", fix(abs(Vp)))
