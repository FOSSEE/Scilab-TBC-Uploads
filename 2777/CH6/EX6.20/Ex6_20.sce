
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD
// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.20

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


v = 11*10^3;                   // Operating voltage of the Synchronous Motor in Volts
p = 4;                         // Total number of Poles
m = 3;                         // number of phase
xs = 7;                        // Synchrouons reactances per phase in Ohms
f = 50;                        // Frequency in Hertz
KVA = 1500;                    // KVA rating (whole)
kva = 500;                     // Each case KVA rating 


// CALCULATIONS

V = v/sqrt(3);                                  // Phase voltage in Volts
ws = (4*%pi*f)/p;                               // Synchronous speed in Radians per second
I = (sqrt(3)*kva)/v;                            // Phase Current in Amphere

// For Case (a) 0.8 pf lagging

pf_a = 0.8;                                     // Power factor lagging
pfa_a = acosd(pf_a);                            // Power factor angle in degree
// we have E*cos(delta) = V - I*xs*sin(theta) = 6351-78.73*7*0.6 = 6020.334 and E*sin(delta) = I*xs*cos(theta) = 78.73*7*0.8 = 440.888 thus we get by sloving these two equatins E = 6036.46 V and delta = atand(440.888/6020.334) = 4.19 degree
E_a = 6036.46;                                 // Induced Voltage in Volts
delta_a = 4.19;                                // Power angle in degree
P_a = (3*V*E_a*sind(delta_a))/(xs*10^6);       // Power in Mega-Watts
T_a = (P_a*10^6)/ws;                           // Torque in Newton-meter

// For Case (b) 0.8 pf leading

pf_b = 0.8;                                     // Power factor lagging
pfa_b = acosd(pf_b);                            // Power factor angle in degree
// we have E*cos(delta) = V + I*xs*sin(theta) = 6351+78.73*7*0.6 = 6681.666 and E*sin(delta) = I*xs*cos(theta) = 78.73*7*0.8 = 440.888 thus we get by sloving these two equatins E = 6696.2 V and delta = atand(440.888/6681.666) = 3.78 degree
E_b = 6696.2;                                  // Induced Voltage in Volts
delta_b = 3.78;                                // Power angle in degree
P_b = (3*V*E_b*sind(delta_b))/(xs*10^6);       // Power in Mega-Watts
T_b = (P_b*10^6)/ws;                           // Torque in Newton-meter

// For Case (c) UPf

pf_c = 1.0;                                     // Power factor lagging
pfa_c = acosd(pf_c);                            // Power factor angle in degree
// we have E*cos(delta) = V = 6351 and E*sin(delta) = I*xs = 78.73*7 = 551.11 thus we get by sloving these two equatins E = 6374.9 V and delta = atand(551.11/6351) = 4.96 degree
E_c = 6374.9;                                  // Induced Voltage in Volts
delta_c = 4.96;                                // Power angle in degree
P_c = (3*V*E_c*sind(delta_c))/(xs*10^6);       // Power in Mega-Watts
T_c = (P_c*10^6)/ws;                           // Torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.20: SOLUTION :-");
printf("\n For Case (a) 0.80 pf lagging :- \n (a) Induced EMF, E = %.2f V \n",E_a)
printf("\n (b) Power , P = %.1f MW \n",P_a)
printf("\n (c) Torque , T = %.2f N-m \n",T_a)
printf("\n For Case (b) 0.80 pf leading :- \n (a) Induced EMF, E = %.1f V \n",E_b)
printf("\n (b) Power , P = %.3f MW \n",P_b)
printf("\n (c) Torque , T = %.2f N-m \n",T_b)
printf("\n For Case (a) UPf :- \n (a) Induced EMF, E = %.1f V \n",E_c)
printf("\n (b) Power , P = %.2f MW \n",P_c)
printf("\n (c) Torque , T = %.f N-m \n",T_c)
