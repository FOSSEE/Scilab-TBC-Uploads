
clc;
clear;
//Example 3.51
rho=975 //[kg/m^3]
k=0.871 //[W/m.K]
dT=10   //[K]
mu=380.5*10^-6  //[N.s/m^2]
lambda=2300 //[kJ/kg]
lambda=lambda*1000  // Latent heat of condensation [J/kg]
Do=100  //Outer diameter [mm]
Do=Do/1000  //[m]
g=9.81  //[m/s^2]
//for horizontal tube
h1=0.725*((rho^2*lambda*g*k^3)/(mu*Do*dT))^(1/4)    //Average heat transfer coefficient
//for vertical tube
//h2=0.943*((rho^2*lambda*g*k^3)/(mu*L*dT))^(1/4)    //Average heat transfer coefficient
h2=h1   //For vertical tube
//implies that
L=(0.943*((rho^2*lambda*g*k^3)^(1/4))/(h1*((mu*dT)^(1/4))))^4   //[m]
L=0.29      //Approximate in book
h=0.943*((rho^2*lambda*g*k^3)/(mu*L*dT))^(1/4)  //[W/(sq m.K)]
A=%pi*Do*L  //Area in [m^2]
Q=h*A*dT    //Heat transfer rate [W]
mc_dot=Q/lambda  //[Rate of condensation]in [kg/s]
mc_dot=mc_dot*3600  //[kg/h]
printf("\n Tube length is %f m\n",L);
printf("\n Rate of condemsation per hour is %f kg/h",mc_dot);
