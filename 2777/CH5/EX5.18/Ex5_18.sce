
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.18

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// From Previous problem data (Example 5.17)

R1ac = 0.8127;                  // Corrected Value of AC stator winding Resistance in Ohms
R2dc = 1.4433;                  // Second rotor parameter, rotor resistance referred to stator is at low frequency in Ohms
Xs = 2.42;                     // Per phase leakage Reactance referred to stator in Ohms
Xm = 64.4;                     // Magnetizing Reactance in Ohms
Rc = 742;                      // Per phase core loss Resistance in Watts
s = 0.035;                     // Slip
m = 3;                         // Total Number of phase in Induction Motor
p = 4;                         // Total number of Poles of Induction Motor
f = 50;                        // Frequency in Hertz
V = 440;                       // Operating Voltage of the Inductuon Motor
out_hp = 20;                   // Motor Power Rating in Horse-Power


// CALCULATIONS

Vph = V/sqrt(3);                                // Per phase Voltage in Volts
Ic = Vph/Rc;                                    // Core loss current in Amphere
I_m = Vph/(%i * Xm);                            // Magnetizing Current in Amphere
I_o = Ic + I_m;                                 // No-load current in Amphere
I_2 = Vph/(R1ac+(R2dc/s)+(%i*Xs));              // Current in Amphere
I1 = I_o + I_2;                                 // Input Current in Amphere
Pf = cosd(atand(imag(I1)/real(I1)));            // Power factor 
P1 = 3*(abs(I_2)^2*R2dc)/s;                    // 3-phase air gap power or Rotor intake Power in Watts
Po = P1*(1-s);                                  // Output Power in Watts
Ws = 2*%pi*((120*f/p)*(1/60));                  // Angular Roatation in Radians per Seconds
T = P1/Ws;                                      // Torque in Newton-Meter


// DISPLAY RESULTS

disp("EXAMPLE : 5.18 : SOLUTION :-");
printf("\n   (a)  Input current, I1 = %.2f < %.2f A \n",abs(I1),atand(imag(I1),real(I1)))
printf("\n   (b)  Power Factor, Pf = %.3f Lagging \n",Pf)
printf("\n   (c)  Output Power, P0 = %.2f W \n",Po)
printf("\n   (d)  Torque, T = %.2f NM \n",T)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) T = 4340.82 Nm instead of %.2f Nm \n ",T);
printf("\n\n       IN TEXT BOOK, CALCULATION OF TORQUE IS NOT DONE \n ");
