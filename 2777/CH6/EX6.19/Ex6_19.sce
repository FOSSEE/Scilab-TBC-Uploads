
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD
// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.19

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

v = 440;                       // Operating voltage of the Synchronous Motor in Volts
p = 6;                         // Total number of Poles
m = 3;                         // Number of phase
xs = 5;                        // Synchrouons reactances per phase in Ohms
f = 50;                        // Frequency in Hertz
p_hp = 10;                     // Motor delivering power in HP
loss = 1000;                   // Total iron,copper and friction losses in Watts
pf = 0.8;                      // Power factor lagging
I = 10;                        // Motor drawing current in Amphere at 0.8 PF lagging


// CALCULATIONS

V = v/sqrt(3);                                  // Phase voltage in Volts
ws = (4*%pi*f)/p;                               // Synchronous speed in Radians per second
theta = acosd(pf);                              // Power factor angle in degree
Po = p_hp*746;                                  // Output power in Watts
Pi = Po+loss;                                   // Input power in Watts
eta = (Po/Pi)*100;                              // Efficiency
// we have V = E*cos(delta) - I*xs*sin(theta), 254 = E*cos(delta) - 5*10*0.6, so E*cos(delta) = 254 + 30 = 284 and E*sin(delta) = I*xs*cos(theta) = 5*10*0.8 = 40 by solving these two equations we get delta = atand(40/284) = 8.01 degree
delta = 8.01;                                    // Power angle in degree
E = 40/sind(delta);                              // Induced EMF per phase in Volts
P = (3*V*E*sind(delta))/(xs*1000);               // Power in Kilo-watts
T = (P*1000)/ws;                                 // Torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.19: SOLUTION :-");
printf("\n (a) Efficiency, eta = %.2f Percent \n",eta)
printf("\n (b) Induced EMF, E = %.f V per phase and \n\n     Power (Torque) angle = %.2f degree \n",E,delta)
printf("\n (c) Power , P = %.4f kW \n",P)
printf("\n (d) Torque , T = %.2f N-m \n",T)      
