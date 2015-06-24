//example 9.3
clc; funcprot(0);
pi=%pi;
zbar=2.23;
L1=2;
L2=3;
Gamma=15.9;
Gamma1=19.33-9.81;
phi=32*pi/180;
Ka=(tan(pi/4-phi/2))^2;
Kp=(tan(pi/4+phi/2))^2;
s1=Gamma*L1*Ka;//sigma1
s2=Gamma*L1*Ka+Gamma1*L2*Ka;//sigma2
L3=s2/(Gamma1*(Kp-Ka));
disp(L3,"length in m");
P=1/2*s1*L1+s1*L2+1/2*(s2-s1)*L2+1/2*s2*L3;
disp(P,"force in kN/m");
deff('y=f(x)','y=x^3+6.99*x^2-14.55');
[x]=fsolve(1.4,f);
D=L3+x;
disp(D,"value of D in m")
AL=1.4*D;
disp(AL,"actual length in m");
//partb
L4=1.4;
F=P-1/2*(Gamma1*(Kp-Ka)*L4^2);
disp(F,"anchor force in kN/m");
//partc
deff('y=f(x)','y=x^2+6.682*x-14.44');
[x]=fsolve(1.7,f);
z=x+2;
Mmax=-1/2*s1*L1*(x+2/3)+F*(x+1)-s1*x*x/2-1/2*Ka*Gamma1*x^3/3;
disp(Mmax,"maximum moment in kN-m/m")

