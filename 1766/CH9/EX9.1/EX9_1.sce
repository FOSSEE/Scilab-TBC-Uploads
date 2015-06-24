clc;funcprot(0);//Example 9.1
//Initilisation of Variables
Lmax=0.5*10^-6;....//Maximum intensity of wavelength in Mew m
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
T=2.898*10^-3/Lmax;....//Surface temparature of the body in K
Eb=R*T^4;....//Heat flux of the surface in W/m^2
disp(Eb,"Heat flux of the surface in W/m^2:")
