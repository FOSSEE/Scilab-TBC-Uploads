//example 9.2
clc; funcprot(0);
sall=172.5*1000;//sigma allowed
pi=%pi;
c=47;
zbar=1.78;
L1=2;
L2=3;
Gamma=15.9;
Gamma1=19.33-9.81;
phi=32*pi/180;
Ka=(tan(pi/4-phi/2))^2;
Kp=(tan(pi/4+phi/2))^2;
s1=Gamma*L1*Ka;//sigma1
s2=Gamma*L1*Ka+Gamma1*L2*Ka;//sigma2
P=1/2*s1*L1+s1*L2+1/2*(s2-s1)*L2;
disp(P,"force in kN/ft");
deff('y=f(x)','y=127.4*x^2-104.4*x-357.15');
[x]=fsolve(2,f);
D=x;
disp(D,"value of D, m")
disp(D*1.5,"actual D in m")
L4=D*(4*c-(Gamma*L1+Gamma1*L2)-P/D)/4/c;
disp(L4,"length in m");
s6=4*c-(Gamma*L1+Gamma1*L2);//sigma6
s7=4*c+(Gamma*L1+Gamma1*L2);//sigma7
z=P/s6;//zdash
Mmax=P*(z+zbar)-1/2*s6*z^2;
S=Mmax*12/sall;
disp(S,"section modulus in m^3/m")
disp("slight error due to rounding off error")

