//Finding of Shear Stress
//Given
//du/dy = vg
vg=.25;            //Velocity gradient in m/sec/meter
nu=6.30*10^-4;         //Kinematic viscosity in m^2/sec
rho=1268.4;             //Mass density in Kg/m^3
mu=rho*nu;              //Dynamic Viscosity
//To Find
tau=mu*vg;          //Shear stress in N/m^2
disp("Shear Stress ="+string(tau)+" N/m^2");
