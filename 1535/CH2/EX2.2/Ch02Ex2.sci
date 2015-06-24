// Scilab Code Ex2.2 : Page-46 (2010)
function E = fn(t)
    E = sin(120*%pi*t);
endfunction
epsilon_r = 1;    // Relative electrical permittivity of free space
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, farad per metre
t = 0;    // Time when peak value of current occurs
J2 = epsilon_0*epsilon_r*derivative(fn,t);
printf("\nThe peak value of displacement current = %4.2e ampere per metre square", J2);

// Result 
// The peak value of displacement current = 3.34e-009 ampere per metre square
