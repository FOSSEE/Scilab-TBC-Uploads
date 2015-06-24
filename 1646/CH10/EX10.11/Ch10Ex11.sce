// Scilab Code Ex10.11: Page:514 (2011) 
clc;clear;
function e = E(r)
    a = 1;    // For convenience assume radius of sphere to be unity 
    r = poly(0, 'r');
    e = r/3-r^3/(5*a^2);
endfunction

rho_0 = 1;    // For convenience assume charge density to be unity
epsilon_0 = 1;    // For convenience assume permittivity to be unity
r = poly(0, 'r');
E_int = rho_0/epsilon_0*E('r');
delta_E = derivat(E_int);
r = roots(delta_E);
printf("\nThe electric field strength is maximum at an internal point at a distance r = sqrt(%g)a/3 from the centre", (3*r(1))^2);

// Result
// The electric field strength is maximum at an internal point at a distance r = sqrt(5)a/3 from the centre 
