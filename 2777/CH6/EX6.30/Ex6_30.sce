
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.30

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

f = 50;                       // Operating Frequency of the Synchronous generator in Hertz
p = 2;                        // Number of the poles 
Pt = 800;                     // Total loss in Watts
Pr = 10;                      // Rotational loss in Watts


// CALCULATIONS

Ws = (4*%pi*f)/p;                                     // Synchronous speed in radians/s
Ph = Pt-Pr;                                           // Hysteresis loss refered to stator in Watts
Th = Ph/Ws;                                           // Torque at the shaft in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.30: SOLUTION :-");
printf("\n (a) Power at the shaft, Ph = %.f W \n",Ph)
printf("\n )b) Torque at the shaft , Th = %.2f N-m \n",Th)

