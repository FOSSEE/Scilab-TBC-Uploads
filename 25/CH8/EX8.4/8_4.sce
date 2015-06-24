//example:-8.4,page no.-410.
// program to design a four hole chebysev coupler in x-band wave guide using round aperture located at s=a/4.
a=0.02286;b=0.01016;lamdao=0.0333;ko=188.5;bta=129;Z10=550.9;P10=4.22*10^-7;f=9*10^9;no=377;N=3;
s=a/4;
kf=((2*ko)/(3*no*P10))*((sin(%pi*s/a)^2)-(2*(bta^2)/(ko^2))*((sin(%pi*s/a)^2)+((%pi^2)/((bta^2)*(a^2)))*(cos(%pi*s/a)^2)));
kf=abs(kf)
kb=((2*ko)/(3*no*P10))*((sin(%pi*s/a)^2)+(2*(bta^2)/(ko^2))*((sin(%pi*s/a)^2)-((%pi^2)/((bta^2)*(a^2)))*(cos(%pi*s/a)^2)));
kb=abs(kb)
x=cosh(acosh(100)/3);  // x=sec(thetam).
thetam=asec(x)*180/%pi; // so,thetam=70.6 and 109.4 at the band edge.
k=10^(-171.94/20);
ro=(((k/2)^(1/3))*x)*1000;
r1=(1.5*k*((x^3)-x))^(1/3)*1000;
disp(kf,'kf = ')
disp(kb,'kb = ')
disp(thetam,'thetam in degree = ')
disp(ro,'ro in mm = ')
disp(r1,'r1 in mm = ')