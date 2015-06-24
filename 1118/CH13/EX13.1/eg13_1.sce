clear;
clear;
 //clc();
 
 
 function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction


previousprot = funcprot(0)
funcprot(0)

 r=10;
 x=30;
 i=x;
 vs=132;
 vr=vs;
 z=r + (%i)*x;
 B=z;
 A=1;
 b=atand(x/r);
 a=0;
 
 [mag,theta]=c(r,i);
 pm=(vs*vr/mag) - ((A*vr^(2)/mag)*cosd(theta));
 printf("\n the maximum power is:  %.2f MW\n",pm);

//maximum power is at an angle
del=theta;
printf("\n the maximum power angle is:  %.2f degrees\n",del);

//determining the rating of the syncronous phase modifier

pl=100;
pr0=-(vr^2)*r/mag^(2);

qr0=-(vr^(2)*x)/mag^(2);

pr=vs*vr/mag;

q=sqrt(pr^(2) - (pr0 - pl)^(2)) +  qr0;

qpm=pl*tand(acosd(0.9)) - q;
printf("\n the rating of the phase modifier is:  %.2f (leading)",qpm);
