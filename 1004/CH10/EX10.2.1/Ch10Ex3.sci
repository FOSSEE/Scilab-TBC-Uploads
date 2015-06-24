// Scilab Code Ex10.2.1 Range of alpha-emitters of uranium: Pg:214 (2008)
L1 = 4.8e-018;    // Decay constant of first alpha-emitter, per sec
L2 = 4.225e+03;    // Decay constant of second alpha-emitter, per sec
L3 = 3.786e-03;    // Decay constant of third alpha-emitter, per sec
R1 = 4.19;    // Range of first alpha-emitter, cm
R2 = 7.86;    // Range of second alpha-emitter, cm
// From Geiger Nuttal law, log R = A log L + B
// Putting R1, L1 and R2, L2, subtracting and solving for A
A = log(R2/R1)/log(L2/L1);    // Slope of straight line between R and L
B = poly(0,"B");    // Intercept of straight line between R and L
B = roots(log(R2)-A*log(L2)-B);    // Other constant of Geiger-Nuttal law
R3 = exp(A*log(L3)+B);    // Range of third alpha-emitter of uranium, cm
printf("\nThe range of third alpha-emitter of uranium = %5.3f cm", R3);
// Result 
// The range of third alpha-emitter of uranium = 6.554 cm 