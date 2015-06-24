//example 9.1
clc; funcprot(0);
sall=30;//sigma allowed
pi=%pi;
zbar=12.1;
L1=10;
L2=20;
Gamma=0.12;
Gamma1=0.1294-0.0624;
phi=40*pi/180;
Ka=(tan(pi/4-phi/2))^2;
Kp=(tan(pi/4+phi/2))^2;
s1=Gamma*L1*Ka;//sigma1
s2=Gamma*L1*Ka+Gamma1*L2*Ka;//sigma2
L3=s2/(Gamma1*(Kp-Ka));
disp(L3,"length in ft");
P=1/2*s1*L1+s1*L2+1/2*(s2-s1)*L2+1/2*s2*L3;
disp(P,"force in kip/ft");
s5=Gamma*L1*Kp+Gamma1*L2*Kp+Gamma*L3*(Kp-Ka);//sigma5
disp(s5,"pressure in kip/ft");
A1=s5/(Gamma1*(Kp-Ka));
A2=8*P/(Gamma1*(Kp-Ka))
A3=6*P*(2*zbar*(Gamma1*(Kp-Ka))+s5)/(Gamma1*(Kp-Ka))^2
A4=P*(6*zbar*s5+4*P)/(Gamma1*(Kp-Ka))^2
printf("A1,A2,A3,A4 respectively in %.2f,%.2f,%.2f,%.2f \n",A1,A2,A3,A4);
disp("slight error due to rounding off error")
//partb
deff('y=f(x)','y=x^4+41.7*x^3-270.5*x^2-13363*x-106863');
[x]=fsolve(20,f);
D=1.88+x;
disp(D,"value of D, ft")
TL=L1+L2+1.3*D;
disp(TL,"total length in ft");
//partc
z=sqrt(2*P/(Gamma1*(Kp-Ka)));//zdash
Mmax=P*(z+zbar)-1/2*(Gamma1*(Kp-Ka))*z^2*z/3;
S=Mmax*12/sall;
disp(S,"section modulus in in^3/ft")

