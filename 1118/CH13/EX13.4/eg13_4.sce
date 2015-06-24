clear;
//clc();

r=14;
x=48;
i=x;
vs=70;
vr=66;

 function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction


previousprot = funcprot(0)
funcprot(0)

[mag,theta]=c(r,i);

z=r + (%i)*x;
y=(%i)*4*10^(-4);

A=1 + 0.5*z*y;

[mag,theta]=c(real(A),imag(A));
a=theta;
A1=mag;

B=z;

function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction

[mag,theta]= c(r,i);
b=theta;
B1=mag;

pr0=-(A1*vr^2)*cosd(b-a)/(B1);

qr0=-(A1*vr^2)*sind(b-a)/(B1);

pr=vs*vr/B1;

pl=0;

q=sqrt(pr^(2) - (pr0 - pl)^(2)) +  qr0;

qpm=q;

s=24;
prat=s*0.8;

q=sqrt(pr^(2) - (pr0 - prat)^(2)) +  qr0;

qpmrat=prat*tand(acosd(0.8))-q;
printf("\n the rating of the synchronous phase modifier is:  %.2f MVAr\n",qpmrat);
