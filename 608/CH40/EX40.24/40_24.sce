//Problem 40.24: Determine the strength of a uniform electric field if it is to have the same energy as that established by a magnetic field of flux density 0.8 T. Assume that the relative permeability of the magnetic field and the relative permittivity of the electric field are both unity.

//initializing the variables:
B = 0.8; // in Tesla
A = 500E-6; // in m2
l = 0.002; // in m
u0 = 4*%pi*1E-7; 
ur = 1;
e0 = 8.85E-12;
er = 1;

//calculation:
//energy stored in mag. field
W = (B^2)/(2*u0)
//electric field
E = (2*W/(e0*er))^0.5

printf("\n\n Result \n\n")
printf("\nelectric field strength is %.2E V/m",E)