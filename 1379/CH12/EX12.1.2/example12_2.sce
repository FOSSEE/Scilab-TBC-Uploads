

//example 12.2 
clc; funcprot(0);
// Initialization of Variable
rho=1.22;//density of air
pi=3.1428;
rhos=910;//density of polyethene
d=3.4/1000;//dia of particles
mu=1.73/10^5;
g=9.81;
dt=3.54/100;//dia of duct
//calculation
a=2*d^3*rho*g*(rhos-rho)/3/mu^2;
disp(a,"R/rho/U^2*(Re^2)=");
//using Chart
Re=2*10^3;
U=mu*Re/d/rho;
b=U/(g*dt)^.5;
if b>0.35 then
    disp("choking can occur of this pipe system");
else
    disp("choking can not occur of this pipe system");
end
//part 2
Uc=15;//actual gas velocity
e=((Uc-U)^2/2/g/dt/100+1)^(1/-4.7);
Usc=(Uc-U)*(1-e);//superficial speed of solid
Cmax=Usc*rhos*pi*dt^2/4;
disp(Cmax,"the maximum carrying capacity of polythene particles in (kg/s)");
