// Scilab code Exa6.10.1 : To calculate the value of magnetic field of the electron whose energy is given   Page 274(2011)
q = 1.602e-019; // Charge of an electron, C
r = 0.28; // Radius of stable orbit,m
E = 70*1.6e-013;  //  Energy of the electron, j
c = 3e+08; // Velocity of light, m/s
B = E/(q*r*c); // Magnetic field, T  
printf("\nThe magnetic field of the electron :  %4.2f T", B)
// Result
//   The magnetic field of the electron :  0.83 T