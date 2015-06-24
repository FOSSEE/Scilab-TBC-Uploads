
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.28

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


V = 400;                       // Operating voltage of the Synchronous generator in Volts
f = 50;                        // Operating Frequency of the Synchronous generator in Hertz
xd = 12;                      // Direct axis reactances in Ohms
xq = 5;                       // Quadrature axis reactances in Ohms
delta = 15;                   // Power(Torque) angle in degree
p = 2;                        // Number of the poles 
m = 3;                        // Number of the phase


// CALCULATIONS

v = V/sqrt(3);                                          // Rated Phase Votage in Volts
Ns = (120*f)/p;                                         // Operating speed in RPM
Ws = (2*%pi*f)/(p/2);                                   // Synchronous speed in radians/s
T = (3*v^2*sind(2*delta)/(2*Ws))*((1/xq)-(1/xd));       // Developed Torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.28: SOLUTION :-");
printf("\n (a) Operating speed, Ns = %.f RPM \n",Ns)
printf("\n (b) Developed Torque , T = %.2f N-m \n",T)
