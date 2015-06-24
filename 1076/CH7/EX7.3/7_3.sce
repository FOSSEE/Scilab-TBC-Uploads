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

dia=14.15e-3;
r=dia/2;

Va=11e3*exp(%i * 0)/sqrt(3);
Vb=11e3*exp(%i *-2* %pi/3)/sqrt(3);
Vc=11e3*exp(%i *2* %pi/3)/sqrt(3);

Vpa=Va * (log(((2*H) - DaP)/DaP)/log(((2*H) - r)/r))
Vpb=Vb * (log(((2*H) - DbP)/DbP)/log(((2*H) - r)/r))
Vpc=Vc * (log(((2*H) - DcP)/DcP)/log(((2*H) - r)/r))

Vp=Vpa+Vpb+Vpc;
mprintf("Potential of P= %.0f V", abs(Vp))
