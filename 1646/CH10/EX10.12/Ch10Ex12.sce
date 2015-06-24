// Scilab Code Ex10.12: Page:517 (2011) 
clc;clear;
function e = E(r)
    a = 1;    // For convenience assume radius of sphere to be unity 
    r = poly(0, 'r');
    e = r/3-r^2/(4*a);
endfunction

rho_0 = 1;    // For convenience assume charge density to be unity
epsilon_0 = 1;    // For convenience assume permittivity to be unity
r = poly(0, 'r');
E_int = rho_0/epsilon_0*E('r');
delta_E = derivat(E_int);
r = roots(delta_E);
printf("\nThe electric field strength is maximum at an internal point at a distance r = %da/3 from the centre", 3*r);

// Result
// The electric field strength is maximum at an internal point at a distance r = 2a/3 from the centre
