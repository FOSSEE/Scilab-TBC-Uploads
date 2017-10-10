//ex2.15   find the power delivered to the load. 

Vs=10;
Zs=50;
v=2e8;
f=150e6;
lamda=v/f;
b=2*%pi/lamda;
l=2.5;
bl=b*l;
ZL=50;
Z0=50;
ZLdash=Z0*((ZL*cos(bl)+%i*Z0*sin(bl))/((Z0*cos(bl)+%i*ZL*sin(bl))));
a=abs(Vs/(ZLdash+Zs))^2;
R=50;
PL=R*a;
disp('The power delivered to the load is = '+string(PL)+' W');