//Finding of Kinematic Viscosity
//Given
tau=0.2158;                 //Shear stress in N/m^2
vg=0.218;                //Velocity Gradient in sec^-1
rho=959.5;                  //Density in Kg/m^3;
//To Find 
mu=tau*1/vg;
disp("Dynamic Viscosity ="+string(mu)+" Ns/m^2");
nu=mu/rho;
disp("Kinematic Viscosity ="+string(nu)+" m^2/sec");
nu1=nu*10^4;
disp(" Knematic Viscosity ="+string(nu1)+" cm^2/sec");
nu2=nu1*10^-4;
disp("Kinematic Viscosity ="+string(nu2)+" strokes");
