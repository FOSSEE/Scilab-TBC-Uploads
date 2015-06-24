
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.10

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V1 = 440;                                       // HV Side Voltage Rating of the Transformer in Volts
V2 = 220;                                       // LV Side Voltage Rating of the Transformer in Volts
pf_o = 0.2;                                     // No-load Power factor lagging
pf_l = 0.8;                                     // Load Power factor lagging
I_o = 5;                                        // No-load current in Amphere
I_2 = 120;                                      // Load current in Amphere

// CALCULATIONS

a = V1/V2;                                      // Turns ratio of the two winding Transformers
theta_o = acosd(pf_o);                          // No load power factor of the two winding Transformers in Degrees
Io = I_o * exp(-(%i*theta_o*%pi/180));          // No load current of the two winding Transformers (minus because lagging) in Amphere
theta = acosd(pf_l);                            // load power factor of the two winding Transformers in Degrees
I2 = I_2 * exp(-(%i*theta*%pi/180));            // secondary load current of the two winding Transformers (minus because lagging) in Amphere
I21 = I2/a;                                     // Secondary referred to the primaryin Amphere
I1 = Io + I21;                                  // Primary current in Amphere
I1_mag = abs(I1);                               // Primary current magnitude inj Amphere
theta_1 = atand( imag(I1),real(I1));            // Primary current angle in Degree


// DISPLAY RESULTS

disp("EXAMPLE : 3.10 : SOLUTION :-") ;
printf("\n (a) Primary current , I1 = %.2f < %.1f A \n ",I1_mag,theta_1);

