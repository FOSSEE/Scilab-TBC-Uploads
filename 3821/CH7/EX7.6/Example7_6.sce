///Chapter No 7 Fluid Mechanics
//// Find newton's law of viscosity in shear stress
///Example 7.6 Page No:116
///Input data
clc;
clear;
S=0.9;          //Specific gravity
tau=2.4;        //shear stress in N/m**2
vg=0.125;     //velocitty gradientin per s
dow=1000;       //density of water Kg/m**3


///Calculation
mu=tau/vg;  //newton's law of viscosity in shear stress in Ns/m**2
rho=S*dow;      //Density of oil in Kg/m**3
v=mu/rho;     //Kinematic viscosity in m**2/s or stoke

///Output
printf('newtons law of viscosity in shear stress= %f Ns/m^2 \n',mu);
printf('Density of oil= %f kg/m^3 \n  ',rho);
printf('Kinematic viscosity=%f m^2/s \n ',v);
