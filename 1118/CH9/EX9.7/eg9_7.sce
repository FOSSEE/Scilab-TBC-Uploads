clear;
clc;

f=50;
l=150;
L=.2;
C=1.5*10^(-6);
vr=110000/sqrt(3);
vs=vr;
xl=2*(%pi)*f*L;
z=(%i)*xl;
y=(%i)*2*(%pi)*f*C;
iab=y*vr/2;
//i=ir+iab
//using the forumla vs=vr+i*z

ir=sqrt(vs*vs-(vr+iab*z)^2)/imag(z);
printf("The load current is:%.3f A",ir);









