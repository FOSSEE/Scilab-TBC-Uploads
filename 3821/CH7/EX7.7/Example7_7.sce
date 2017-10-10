///Chapter No 7 Fluid Mechanics
////Example 7.7 Page No:117
///Find  Density of oil
///Input data
clc;
clear;
A=6*10^-2;           //Space between two square plates in mm
dy=8*10^-3;          //Thickness of fluid in mm
u1=0;                 //Lower pate is stationary
u2=2.4;               //Upper plate in m/s
F=5;                  //Speed of force in N
s=1.6;                //Specific gravity of the liquid
dow=1000;             //Density of water Kg/m**3


//(1)Calculation
du=u2-u1;             //change in velocity in m/s
tau=F/((A)^2);     //shear stress N/m**2
mu=tau/(du/dy);     //Newton's law of viscosity in Ns/m**2 or poise
rho=s*dow;            //Density of oil in kg/m**3
v=mu/rho;           ///kinematic viscosity is given by m**2/s or stoke


///Output
printf('change in velocity=%f m/s \n ',du);
printf('shear stress=%f N/m^2 \n  ',tau);
printf('Newtons law of viscosity=%f Ns/m^2 \n',mu);
printf('Density of oil=%f kg/m^3 \n ',rho);
printf('kinematic viscosity=%f m^2/s ',v);
