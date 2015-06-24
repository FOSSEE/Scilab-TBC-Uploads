// Scilab code: Ex4.1 : Percentage transmission of beam through potential barrier: Pg: 124 (2008)
eV = 1.6e-019;    // Energy required by an electron to move through a potential barrier of one volt, joules
m = 9.1e-031;    // Mass of electron, kg
E = 4*eV;    // Energy of each electron, joule
Vo = 6*eV    // Height of potential barrier, joule
a = 10e-010;    // Width of potential barrier, m
h_bar = 1.054e-34;    // Reduced Planck's constant, J-s
k = 2*m*(Vo-E)/h_bar^2
// Since 2*k*a = 2*a*[2*m*(Vo-E)^1/2]/h_bar so
pow = 2*a/h_bar*[2*m*(Vo-E)]^(1/2);    // Power of exponential in the expression for T
T = [16*E/Vo]*[1-E/Vo]*exp(-1*pow);    // Transmission coefficient of the beam through the potential barrier
percent_T = T*100;    
printf("\nThe percentage transmission of beam throught potential barrier = %5.3e percent", percent_T);
// Result
// The percentage transmission of beam throught potential barrier = 1.828e-004 percent