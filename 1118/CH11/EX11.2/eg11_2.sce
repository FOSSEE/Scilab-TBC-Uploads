clear;
clc;
function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction

previousprot = funcprot(0)
funcprot(0)

//clc();
mag=0.98;
theta=3;
[r,i]=d(mag,theta);
A=complex(r,i);

D=A;

mag=110;
theta=75;
[r,i]=d(mag,theta);
B=complex(r,i);

mag=0.0005;
theta=88;
[r,i]=d(mag,theta);
C=complex(r,i);

v=132*10^(3);
s=50*10^(6);
pf=0.8;

vrp=v/sqrt(3);
mag=vrp;
theta=0;
[r,i]=d(mag,theta);
vr=complex(r,i);

i=s/(sqrt(3)*v);
mag=i;
theta=-acosd(pf);
[r,i]=d(mag,theta);
ir=complex(r,i);

vsp=A*vr + B*ir;
printf('the voltage at the sending end is:');
disp(vsp);
is=C*vr + D*ir;
printf('the current at the sending end is:');
disp(is);
qs=atand(imag(vsp)/real(vsp))-atand(imag(is)/real(is));
printf("The power factor is:%.4f",cosd(qs));
