clear;
clc;
v=1;
r=1250e3;
V=600;
x1=.05*%i;
x2=.05*%i;
x0=.02*%i;
a=1*%e^(%i*(120*%pi/180));
b=a^2;
ia1=v/(x1+inv(inv(x2)+inv(x0)));
ibase=1200;
va1=v-(ia1*x1);
ia2=-va1/x2;
ia0=-va1/x0;
ia=(ia0+ia1+ia2);
ib=(ia0+(b*ia1)+(a*ia2));
ic=(ia0+(a*ia1)+(b*ia2));
ia0r=real(ia);
ia0i=imag(ia);
iam=sqrt((ia0r^2)+(ia0i^2));
ia1r=real(ib);
ia1i=imag(ib);
ibm=sqrt((ia1r^2)+(ia1i^2));//the difference in result is due to erroneous calculation in textbook.
ia2r=real(ic);
ia2i=imag(ic);
icm=sqrt((ia2r^2)+(ia2i^2));
iaa=0;
iba=atand(ia1i/ia1r);
ica=atand(ia2i/ia2r);
im=ibm*ibase;
mprintf("fault current for double line to ground fault=%fA",im)
disp("the difference in result is due to erroneous calculation in textbook.")
