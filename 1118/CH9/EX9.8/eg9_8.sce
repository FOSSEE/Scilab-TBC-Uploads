clear;
clc;

vl=132000;
s=50000000;
pf=.85;
l=80;

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction



previousprot = funcprot(0)
funcprot(0)

mag=96;
theta=78;
[r,i]=d(mag,theta);
z=complex(r,i);

mag=.001;
theta=90;
[r,i]=d(mag,theta);
y=complex(r,i);

vrp=vl/sqrt(3);
Irp=s/(sqrt(3)*vl*pf);

mag=Irp;
theta=-acosd(pf);
[r,i]=d(mag,theta);
irp=complex(r,i);

//a).for the nominal T network parameters are
A=1+.5*z*y;
B=z*(1+.25*z*y);
C=y;
D=A;

disp(A);
disp(B);
disp(C);
disp(D);

//phase voltage at the sending end is
vsp=A*vrp+B*irp;
vsl=sqrt(3)*vsp;
disp(vsp);

//c).
is=C*vrp+D*irp;
disp(is);

//d).
qs=atand(imag(vsp)/real(vsp))-atand(imag(is)/real(is));
printf("\n The power factor at the sending end is:%.3f (lagging)",cosd(qs));

//e).
r=real(vsl);
i=imag(vsl);
function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction
previousprot = funcprot(0)
funcprot(0)

[mag,theta]=c(r,i);
Vsl=mag;

r=real(is);
i=imag(is);
[mag,theta]=c(r,i);

Is=mag;
eff=s/(sqrt(3)*Vsl*Is*cosd(qs));
printf("\n The efficiency of transmission is:%.2f per cent",eff*100);
