

//exapple 11.1 
clc; funcprot(0);
// Initialization of Variable
pi=3.1428;
d=0.3/1000;
mu=2.21/100000;
rho=106.2;//density under operating condition
u=2.1/100;
rhos=2600;//density of particles
l=3.25;
g=9.81;
dt=0.95//fluidising diameter
//part 1
//calculation
a=u^2/d/g*d*rho*u/mu*(rhos-rho)/rho*l/dt;
if a>100 then
    disp(a,"Bubbling fluidisation will occur as value is ")
end
//part 2
Q=2.04/100000;
rhos=2510;
rho=800;
mu=2.85/1000;
l=4.01;
dt=0.63;
d=0.1/1000;
u=Q*4/pi/dt^2;
a=u^2/d/g*d*rho*u/mu*(rhos-rho)/rho*l/dt;
if a<100*10^-4 then//compare as value of a is much less than 100
    disp(a,"fluidisation occur in smooth mode as value is:");
end

