// Scilab code Exa5.6.1: To calculate the velocity of ejected photoelectron : P.no. 230 (2011)
 C = 3e+08; // Speed of light, m/s
 h = 6.626e-034; // Planck's constant, Js
 lambda = 2500e-010; //   wavelength of light, m
e = 1.602e-019; // Charge of electron, C
 w = 1.9; // Work function, J
m = 9.1e-031; // Mass of the electron, kg 
E_c = h*C/(lambda*e); // Calculated energy, J
E_e = E_c-w; // Energy of photoelectron, J
v = sqrt((2*E_e*e)/m); // Velocity of photoelectron, m/s
printf("\nThe velocity of photoelectron : %4.2e m/s ", v )
// Result
//      The velocity of photoelectron : 1.04e+006 m/s  












































































