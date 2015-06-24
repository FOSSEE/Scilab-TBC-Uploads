


//exapple 11.3 
clc; funcprot(0);
// Initialization of Variable
g=9.81;
rhos=1980;//density of ore
rho=1.218;//density of air
e=0.4;
mu=1.73/10^5;
s=0;
wp=[0 .08 .20 .40 .60 .80 .90 1.00];//weight percent
d=[0.4 0.5 0.56 0.62 0.68 0.76 0.84 0.94]/1000;
//part 1
for i=1:7
    dav(i)=d(i+1)/2+d(i)/2;//average dia
    mf(i)=wp(i+1)-wp(i);//mass fraction
    a(i)=mf(i)/dav(i);
    s=s+a(i);
end
db=1/s;//d bar
//quadratic coeff. ax^2 +bx +c=0
c=-(rhos-rho)*g;
b=150*(1-e)/e^3/db^2*mu;
a=1.75*rho/e^3/db;
y=poly([c b a],'U','coeff');
U=roots(y);
disp(abs(U(2)), "the linear air flow rate in (m/s):");
//part 2
d=0.4/1000;
a=2*d^3/3/mu^2*rho*(rhos-rho)*g;
a=log10(a);
disp(a,"log10(Re^2/rho/U^2*R)=");
//using chart
Re=10^1.853;
u=Re*mu/rho/d;
disp(u, "speed required for smallest particle in (m/s):")
