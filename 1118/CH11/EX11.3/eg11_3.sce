clear;
//clc();

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction

previousprot = funcprot(0)
funcprot(0)

mag=0.97;
theta=0.6;
[r,i]=d(mag,theta);
a1=complex(r,i);


mag=60;
theta=70;
[r,i]=d(mag,theta);
b1=complex(r,i);


mag=0.97;
theta=0.4;
[r,i]=d(mag,theta);
a2=complex(r,i);

mag=50;
theta=76;
[r,i]=d(mag,theta);
b2=complex(r,i);

s=50*10^(6);
v=132*10^(3);
pf=0.8;


vrp=v/sqrt(3);
mag=vrp;
theta=0;
[r,i]=d(mag,theta);
vr=complex(r,i);

i=s/(sqrt(3)*v*pf);
mag=i;
theta=-acosd(pf);
[r,i]=d(mag,theta);
ir=complex(r,i);

A=(a1*b2 + a2*b1)/(b1 + b2);

B=(b1*b2)/(b1+b2);

vsp=A*vr + B*ir;
printf('the sending end phase voltage is:');
disp(vsp);
