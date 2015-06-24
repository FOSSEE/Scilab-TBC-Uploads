clear;
//clc();
function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
    
endfunction

previousprot = funcprot(0)
funcprot(0)

r=25;
x=90;
i=x;
[mag,theta]=c(r,i);
vs=145;
 vr=132;

pl=0;
p=50;
pr0=-(vr^2)*r/mag^(2);

qr0=-(vr^(2)*x)/mag^(2);

pr=vs*vr/mag;

q=sqrt(pr^(2) - (pr0 - pl)^(2)) +  qr0;

qpm=q;
printf("\n the rating of the synchronous phase modifier is:  %.2f MVAr\n",qpm);
phi=atand(qpm/p);
printf("\n the pf is:  %.2f (lagging)\n",phi);
