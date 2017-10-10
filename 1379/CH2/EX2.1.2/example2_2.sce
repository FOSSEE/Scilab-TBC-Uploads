//exapple 2.2 
clc; funcprot(0);
// Initialization of Variable
M=28.8/1000;
mu=1.73/10^5;
gamm=1.402;
P1=107.6*10^3;
l = 68.5;
pi = %pi;
V=22.414/1000;
R=8.314;
temp=285;
d=4/1000;
rr=0.0008;
phi=0.00285;
//calculation
//constant term of equation
//part1
a=1-8*phi*l/d;//constant term in deff
deff('y=f(x)','y=log(x^2)-x^2+2.938');
[x,v,info]=fsolve(1,f);
z=1/x;
z=round(z*1000)/1000;
disp(z,"ratio of Pw/P1");
//part2
Pw=z*P1;
nuw=V*P1*temp/Pw/M/273;
Uw=sqrt(nuw*Pw);
disp(Uw,"maximum velocity in (m/s):")
//part3
Gw=pi*d^2/4*Pw/Uw;
disp(Gw,"maximum mass flow rate in(kg/s):");
//part4
G=2.173/1000;
J=G*Uw^2/2;
disp(J,"heat taken up to maintain isothermal codition(J/s):");
//part5
nu2=2.79;//found from graph
nu1=R*temp/M/P1;
P2=P1*(nu1/nu2)^gamm;
disp(P2/P1,"crtical pressure ratio in adiabatic condition:");
//part6
Uw=sqrt(gamm*P2*nu2);
disp(Uw,"velocity at adiabatic condition in (m/s):");
//part7
Gw=pi*d^2/4*Uw/nu2;
disp(Gw,"mass flow rate at adiabatic condition in (kg/s):");
//part8
//polynomial in T of the form ax^2+bx+c=0;
c=gamm/(gamm-1)*P1*nu1+.5*Gw^2/pi^2/d^4*16*nu1^2;
b=gamm/(gamm-1)*R/M;
a=.5*Gw^2/pi^2/d^4*16*(R/M/P2)^2;
y=poly([-c b a],'x','coeff');
T2=roots(y);
disp(T2(2)-273,"temperature of discharging gas in (Celcius)");