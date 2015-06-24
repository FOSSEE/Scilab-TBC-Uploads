
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.17

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


V = 440;                       // Operating voltage of the Synchronous Motor in pu
E = 200;                       // Induced voltage in Volts
xs = 8.0;                      // Synchronous reactance in Ohms
f = 50;                        // Frequency in Hertz
pa = 36;                       // Power angle in degree


// CALCULATIONS

v = V/sqrt(3);                 // Rated phase voltage in Volts
ws = 2*%pi*f;                  // Synchronous speed in Radians per second
// To calculate the power factor angle refer page no 438 n figure 6.50
// Since E*cos(delta) < v so Power factor is lagging, let power factor angle be theta from ohasor diagram figure 6.50:- page no. 438
// v = E*cos(delta) + I*xs*sin(theta), I*sin(theta) = (254-0.809*200)/8 = 11.525
// Similarly, E*sin(delta) = I*xs*cos(theta), I*cos(theta) = (200*0.59)8 = 14.70
// From above two equations, tan(theta) = 0.784
theta = -38.1;                                  // Power factor angle in degree (minus sign because of lagging)
pf = cosd(theta);                               // Power factor lagging
I = 14.7/cosd(theta);                           // Line current in Amphere (I*cos(theta) = 14.7) 
p = 3 * v * 14.7;                               // Input to motor in watts ( p = 3*V*I*cos(theta), I*cos(theta) = 14.7) 
P = (3*E*v*sind(pa))/(xs*1000);                 // Power in Kilo-watts
T = (P*1000)/ws;                                // Torque in Newton-meter
// For Power factor unity
// let the current will be I2, thus 3*v*I2 = 3*v*I*cos(theta) , I2 = I*cos(theta) = 14.10 A
// let ecitation will be E2, thus v = E2*cos(delta2) and E2*sin(delta2) = I2*xs, E2*cos(delta2) = 254 and E2*sin(delta2) = 117.60, by solving these two equations we get E2 = sqrt(254^2+117.6^2) = 279.90 V and delta2 = atand(117.6/254) = 24.84 degree
E2 = 279.90;
delta2 = 24.84;
P_1 = (3*v*E2*sind(delta2))/(xs*1000);                     // Power in kilo-watts
T_1 = (P_1*1000)/ws;                                       // Torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.17: SOLUTION :-");
printf("\n (a) Line current, I = %.2f A \n",I)
printf("\n (b) Power factor angle = %.1f degree \n",theta)
printf("\n (c) Power , P = %.3f kW \n",P)
printf("\n (d) Torque , T = %.2f N-m \n",T)
printf("\n (e) Power factor = %.2f lagging \n",pf)
printf("\n To make the Power factor to UNITY requirements are:- \n (a) Excitation EMF, E = %.2f V \n",E2)
printf("\n (b) Power angle = %.2f degree \n",delta2)
printf("\n (c) Power , P = %.3f kW \n",P_1)
printf("\n (d) Torque , T = %.2f N-m \n",T_1)
