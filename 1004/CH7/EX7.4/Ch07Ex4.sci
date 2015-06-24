// Scilab code: Ex7.4: CO molecule in lower state: Pg: 171 (2008)
R = 1.13e-010;    // Bond length of CO molecule, m
h_red = 1.054e-034;    // Reduced Planck's constant, Js
mu = 1.14e-026;    // Reduced mass ofthe system, kg
J = 1;    // Rotational quantum number for lowest state
I = mu*R^2;    // Moment of inertia of CO molecule about the axis of rotation, kg-metre square
EJ = J*(J + 1)*h_red^2/(2*I);    // Energy of the CO molecule in the lowest state, J
omega = sqrt(2*EJ/I);    // Angular velocity of the CO molecule in the lowest state, rad per sec
printf("\nThe energy of the CO molecule in the lowest state = %4.2e J", EJ);
printf("\nThe angular velocity of the CO molecule in the lowest state = %4.2e rad/sec", omega);
// Result
// The energy of the CO molecule in the lowest state = 7.63e-023 J
// The angular velocity of the CO molecule in the lowest state = 1.02e+012 rad/sec 