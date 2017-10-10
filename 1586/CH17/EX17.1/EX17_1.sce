clc;funcprot(0);//EXAMPLE 17.1
// Initialisation of Variables
per1=2;.............//Percent weight of ThO2
per2=98;..............//Percentage weight of Nickle
rho1=9.69;...........//Density of ThO2 in g/cm^3
rho2=8.9;............//Density of Nickel in g/cm^3
r=0.5*10^-5;........//Radius of ThO2 particle in cm
//calculations
f=(2/rho1)/((per1/rho1)+(per2/rho2));.........//Volume fraction of ThO2 per cm^3 of composite
v=(4/3)*(%pi)*r^3;...........//Volume of ech ThO2 sphere in cm^3
c=f/v;.................//Concentration of ThO2 particles in particles/cm^3
disp(c,"Concentration of ThO2 in particles/cm^3:")
