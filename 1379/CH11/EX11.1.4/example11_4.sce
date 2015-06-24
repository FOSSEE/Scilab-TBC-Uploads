

//exapple 11.4 
clc; funcprot(0);
// Initialization of Variable
U=2.032/10^4;
pi=3.1428;
rho=852;
g=9.81;
mu=1.92/1000;
mf=125/3600;//mass flow rate
//calculation
//part 1
G=U*rho;
A=mf/G;
d=sqrt(4*A/pi);
disp(d, "the diameter of vessel will be in(m):");
//part 2
A=0.201;
e=0.43;
ms=102;//mass of solids
rhos=1500;//density of solid
L=ms/rhos/A;
Lmf=L/(1-e);
disp(Lmf , "depth of bed in (m):")
//part 3
d1=0.2/1000;
U=2*5.5/10^3*e^3*d1^2*(rhos-rho)*g/mu/(1-e);
//now euating for e
//a=e^3/(1-e)
a=U/5.5*10^3/(d1^2*(rhos-rho)*g/mu);
y=poly([-a a 0 1],'e',"coeff");
e2=roots(y);
L=Lmf*(1-e)/(1-e2(3));
disp(L,"depth of fluidised bed under operating condition in (m):")
