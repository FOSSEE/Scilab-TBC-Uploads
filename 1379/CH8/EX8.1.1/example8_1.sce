

//exapple 8.1 
clc; funcprot(0);
// Initialization of Variable
//part1
a=78/1000;//dV/dt
rho=998;//density of water
rhoc=2230;//density of china clay
rhod=1324;//density of cowdung cake
mu=1.003/1000;
P2=3.23*1000;//pressure after 2 min.
P5=6.53*1000;//pressure after 5 min.
t=30*60;
b=[P2;P5];
A=[a^2*120 a;a^2*300 a];
x=A\b;
P=x(1,1)*a^2*t+x(2,1)*a;
disp(P/1000,"pressure drop at t=30min in (kN/m^2):")
//part2
J=0.0278;//mass fraction
l=1.25;
b1=0.7;
A1=l*b1*17*2;//area of filtering
V=a*30*60;//volume of filterate
e=1-rhod/rhoc;
nu=J*rho/((1-J)*(1-e)*rhoc-J*e*rho);
l1=nu*V/A1;
disp(l1,"the thickness of filtercake formed after 30 min in (m):")
//part3
r=x(1,1)/mu/nu*A1^2;
L=x(2,1)*A1/r/mu;
disp(L,"thickness of cake required in (m):");
//part 4
S=sqrt(r*e^3/5/(1-e)^2);
d=6/S;
disp(d*10^6,"average particle diameter in(10^-6m):")
