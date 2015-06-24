//example 9.7
clc; funcprot(0);
pi=%pi;
zbar=3.2;
c=41;
L1=3;
L2=6;
Gamma=17;
Gamma1=20-9.81;
phi=35*pi/180;
Ka=(tan(pi/4-phi/2))^2;
Kp=(tan(pi/4+phi/2))^2;
s1=Gamma*L1*Ka;//sigma1
s2=Gamma*L1*Ka+Gamma1*L2*Ka;//sigma2
P=1/2*s1*L1+s1*L2+1/2*(s2-s1)*L2;
disp(P,"Force in kN/m");
s6=4*c-(Gamma*L1+Gamma1*L2);//sigma6
disp(s6,"pressure in kN/m^2");
deff('y=f(x)','y=x^2+15*x-25.43');
[x]=fsolve(1.6,f);
D=x;
disp(D,"depth in m");
F=P-s6*D;
disp(F,"force in kN/m");
printf("slight error due to rounding off")

