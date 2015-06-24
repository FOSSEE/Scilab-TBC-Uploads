
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.15

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 5.15 : \n\n          Given Data No-load test : 440V, 30A, 4.5KW \n");
printf("\n          Blocked rotor test :      90V,50Hz, 120A, 16KW \n");
m = 3;                          // Total Number of phase in Induction Motor
p = 6;                          // Total number of Poles of Induction Motor
V = 440;                        // Operating voltage of the Induction motor in Volts
out_hp = 100;                   // Output of the Induction motor in Horse-Power
R = 0.15;                       // Average dc Resistance in Ohms
Wsc = 16000;                    // Power at Blocked Rotor test in Watts
Vsc = 90;                       // Voltage at Blocked Rotor test in Volts
Isc = 120;                      // Current at Blocked Rotor test in Amphere
W0 = 4500;                      // Power at No-load test in Watts
V0 = 440;                       // Voltage at No-load test in Volts
I0 = 30;                        // Current at No-load test in Amphere 
s = 0.05;                       // Slip
f = 50;                         // Frequency in Hertz


// CALCULATIONS

R1 = R/2;                                       // DC winding Resistance per phase in Ohms
Rac = Wsc/(3*Isc^2);                            // AC Resistance referred to stator from locked rotor test at supply frequency in Ohms
R_2 = Rac - R1;                                 // Per phase Rotor Resistance to Stator in Ohms
Zsc = Vsc/(sqrt(3)*Isc);                        // Per phase Impedance from locked rotor test in Ohms
Xs = sqrt((Zsc^2)-(Rac^2));                     // Per phase leakage Reactance referred to stator in Ohms
theta_0 = acosd(W0/(V0*I0*sqrt(3)));            // No-load power factor angle in degree
Im = I0*sind(theta_0);                          // Reactive component of no-load current in Amphere
Xm = V0/(Im*sqrt(3));                           // Magnetizing Reactance in Ohms
Pc = W0 - 3*I0^2*R1;                            // Total Core loss in Watts
Rc = (V0/sqrt(3))^2*(3/Pc);                     // Per phase core loss Resistance in Watts
Vph = V0/sqrt(3);                               // Per phase Voltage in Volts
Ic = Vph/Rc;                                    // Core loss current in Amphere
I_m = Vph/(%i * Xm);                            // Magnetizing Current in Amphere
I_o = Ic + I_m;                                 // No-load current in Amphere
I_2 = Vph/(R1+(R_2/s)+(%i*Xs));                 // Current in Amphere
I1 = I_o + I_2;                                 // Input Current in Amphere
Pf = cosd(atand(imag(I1)/real(I1)));            // Power factor 
P1 = (3*(abs(I_2)^2*R_2)/s)/1000;               // 3-phase air gap power or Rotor intake Power in Kilo-Watts
Po = P1*(1-s);                                  // Output Power in Kilo-Watts
Ws = 2*%pi*((120*f/p)*(1/60));                  // Angular Roatation in Radians per Seconds
T = P1*1000/Ws;                                 // Torque in Newton-Meter


// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n (a.1)  DC winding Resistance per phase, R1 = %.3f Ohms \n",R1)
printf("\n (a.2)  AC Resistance referred to stator from locked rotor test at supply frequency  = %.4f Ohms \n",Rac)
printf("\n (a.3)  Per phase Rotor Resistance to Stator, R2 = %.4f Ohms \n",R_2)
printf("\n (a.4)  Per phase Impedance from locked rotor test,Zsc = %.3f Ohms \n",Zsc)
printf("\n (a.5)  Per phase leakage Reactance referred to stator, Xs = %.4f Ohms \n",Xs)
printf("\n (a.6)  No-load power factor angle, theta_O = %.2f Degree \n",theta_0)
printf("\n (a.7)  Reactive component of no-load current, Im = %.1f A \n",Im)
printf("\n (a.8)  Magnetizing Reactance, Xm = %.2f Ohms \n",Xm)
printf("\n (a.9)  Total Core loss, Pc = %.1f W \n",Pc)
printf("\n (a.10) Per phase core loss Resistance, Pc = %.f Ohms \n",Rc)
printf("\n (a.11) Per phase Voltage, Vph = %.f V \n",Vph)
printf("\n (a.12) Core loss current, Ic = %.2f < %.f A \n",abs(Ic),atand(imag(Ic),real(Ic)))
printf("\n (a.13) Magnetizing Current, Im = %.1f < %.f A \n",abs(I_m),atand(imag(I_m),real(I_m)))
printf("\n (a.14) No-load current, I0 = %.2f < %.2f A \n",abs(I_o),atand(imag(I_o),real(I_o)))
printf("\n (a.15) Current, I2 = %.2f < %.2f A \n",abs(I_2),atand(imag(I_2),real(I_2)))
printf("\n   (b)  Input current, I1 = %.2f < %.2f A \n",abs(I1),atand(imag(I1),real(I1)))
printf("\n   (c)  Power Factor, Pf = %.4f Lagging \n",Pf)
printf("\n   (d)  Output Power, P0 = %.1f kW \n",Po)
printf("\n   (e)  Torque, T = %.2f NM \n",T)
