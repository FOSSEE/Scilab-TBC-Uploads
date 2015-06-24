clear;
clc();

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction



previousprot = funcprot(0)
funcprot(0)

vr=60000;
pr=36000000;
p=(12*10^6);
pf=.8;
mag=p/(vr*pf);
theta=acosd(pf);

[r,i]=d(mag,theta);
ir=conj(complex(r,i));

f=50;
l=.1;
c=.25*10^(-6);
r=2.5;
xl=2*(%pi)*f*l;
z=r+(%i)*xl;
y=(%i)*2*(%pi)*f*c;
//calculations by nominal T model

vab=vr+.5*z*ir;
iab=y*vab;
is=ir+iab;
printf("\n The current in A at the sending end is:");
disp(is);
qi=atand(imag(is)/real(is));

//voltage drop in the left hand half of the line
vd=is*z/2;
vs=vab+is*z/2;
printf("\n The volatge  in V at the sending end is:");
disp(vs);
vl=sqrt(3)*vs;
qs=atand(imag(vs)/real(vs))-qi;
pfs=cosd(qs);
printf("\n The lagging power factor at the sending end is:");
disp(pfs);
s3=3*vs*conj(is);
printf("\n The apparent power  in VA at the sending end is:");
disp(s3);
eff=pr/real(s3);
printf("\n The transmission efficiency is: %.4f per cent",eff*100);

A=1+.5*z*y;
r=real(A);
i=imag(A);
function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction
previousprot = funcprot(0)
funcprot(0)

[mag,theta]=c(r,i);
magA=mag;
r=real(vs);
i=imag(vs);
[mag,theta]=c(r,i);

magV=mag;

vrnl=magV/magA;
reg=(vrnl-vr)/vr;
printf("\n The regulation is:%.4f per cent",reg*100);

//calculations based on pi model
printf("\n \n Calculations based on pi model:");
iab=y*vr/2;
i=ir+iab;
vd=i*z;
vs=vr+vd;
printf("\n \nThe volatge  in V at the sending end is:");
disp(vs);
icd=y*vs/2
is=i+icd;
printf("\n The current in A at the sending end is:");
disp(is);
qis=atand(imag(vs)/real(vs))-atand(imag(is)/real(is));
pfs=cosd(qis);
printf("\n The lagging power factor at the sending end is:");
disp(pfs);
s3=3*vs*conj(is);
printf("\n The apparent power  in VA at the sending end is:");
disp(s3);
eff=pr/real(s3);
printf("\n The transmission efficiency is:%.2f per cent",eff*100);

A=1+.5*z*y;
r=real(A);
i=imag(A);
function [mag,theta]=c(r,i)
    mag=sqrt(r*r + i*i)
    theta=atand(i/r)
endfunction
previousprot = funcprot(0)
funcprot(0)

[mag,theta]=c(r,i);
magA=mag;
r=real(vs);
i=imag(vs);
[mag,theta]=c(r,i);

magV=mag;

vrnl=magV/magA;
reg=(vrnl-vr)/vr;
printf("\n The regulation is:%.4f per cent",reg*100);



