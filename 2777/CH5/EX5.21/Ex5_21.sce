
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.21

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 3;                          // Total Number of phase in Induction Motor
p = 4;                          // Total number of Poles of Induction Motor
s = 0.05;                       // Slip
f = 50;                         // Frequency in Hertz
Tm = 500;                       // Maximum Torque in Newton-Meter
Tst = 200;                      // Starting Torque in Newton-Meter
sst = 1.0;                      // Starting Slip


// CALCULATONS

p1 = poly([1 -5 1],'sm','c');   // Slip at Maximum Torque (obtained from Equation  Tst = (2*Tm)/((sst/sm)+(sm+sst))
a = roots(p1);                  // Value of slip at Maximum Torque (obtained from Equation  Tst = (2*Tm)/((sst/sm)+(sm+sst)) 
sm = a(2,1);                    // Slip at Maximum Torque (obtained from Equation  Tst = (2*Tm)/((sst/sm)+(sm+sst)) { 1st root is 4.8 so its out of range because slip value is lies between 0-1 so its neglected and second root will be slip }
T = (2*Tm)/((s/sm)+(sm/s));     // Torque at 0.05 slip
Ns = (120*f)/p;                 // Synchronous Speed in RPM
Wr = (2*%pi)*(1-s)*(Ns/60);     // Angular Velocity in Radians-per-Second
P = T * Wr;                     // Power Output in Watts
P_HP = P/746;                   // Power Output in Horse-Power


// DISPLAY RESULTS

disp("EXAMPLE : 5.21 : SOLUTION :-");
printf("\n (a) Torque at 0.05 slip, T = %.2f Nm \n",T)
printf("\n (b) Power Output at 0.05 slip, P = %.1f W = %.2f HP \n",P,P_HP)
