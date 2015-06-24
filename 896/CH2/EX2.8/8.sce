clc
//calc the total force on a lock gate
//lock gate has water on one side and air on the other at atm. pressure
w=20;//m (width of the lock gate)
h=10;//m (height of the lock gate)
p_atm=1;//atm
rho_water=1000;//Kg/m^3
g=9.81//m/s^2
//for a small strip of dx height at the depth of x on the lock gate
//net pressure on strip = (p_atm+(rho_water)*g*x) - p_atm
//thus, net pressure on strip = (rho_water)*g*x
//force on strip = (rho_water*g*x)*w.dx = (rho_water)*g*w*(x.dx)
//force on lock gate = integration of force on strip fromm h=0 to h=10
//integration(x.dx) = x^2/2
//for h=0 to h=10; integration (x.dx) = h^2/2
force_lockgate=(rho_water)*g*w*h^2/2;
disp("The net force on the lock gate is")
disp(force_lockgate/10^6)
disp("MN")