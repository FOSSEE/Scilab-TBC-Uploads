
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.17

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 5.17 : \n\n          Given Data No-load test : 440V, 3.0A, 500KW, 50Hz \n");
printf("\n          Blocked rotor test at rated frequency : 110V, 18A, 2500W, 50Hz \n");
printf("\n          DC test on Stator per phase : 10V, 15A \n");
m = 3;                          // Total Number of phase in Induction Motor
p = 4;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operating Voltage of the Inductuon Motor
out_hp = 20;                    // Motor Power Rating in Horse-Power 
Vdc = 10;                       // DC Voltage in Volts
Idc = 15;                       // DC Current in Amphere
Wsc = 2500;                     // Power at Blocked Rotor test rated frequency in Watts
Wsc_red = 2050;                 // Power at Blocked Rotor test reduced frequency in Watts
Vsc = 110;                      // Voltage at Blocked Rotor test rated frequency in Volts
Isc = 18;                       // Current at Blocked Rotor test rated frequency in Amphere
Wo = 500;                       // Power at No-load test in Watts
Vo = 440;                       // Voltage at No-load test in Volts
Io = 4.0;                       // Current at No-load test in Amphere
fsc = 50;                       // Rated Frequency at blocked rotor test in Hertz
fo = 50;                        // Rated Frequency at no-load test in Hertz
fsc1 = 15;                      // Reduced Frequency at blocked rotor in Hertz
Pfw = 200;                      // Friction and Windage loss in Watts


// CALCULATIONS

R1dc = Vdc/Idc;                         // DC winding Resistance per phase in Ohms
Rac = Wsc/(3*Isc^2);                    // AC Resistance from Locked rotor test at supply frequency
Rac_red = Wsc_red/(3*Isc^2);            // AC Resistance from Locked rotor test at reduced frequency
R1ac = (Rac/Rac_red)*R1dc;              // Corrected Value of AC stator winding Resistance in Ohms
R2dc = Rac_red - R1dc;                  // Second rotor parameter, rotor resistance referred to stator is at low frequency in Ohms
Zsc = Vsc/(sqrt(3)*Isc);                        // Per phase Impedance from locked rotor test at power frequency in Ohms
Xs = sqrt((Zsc^2)-(Rac^2));                     // Per phase leakage Reactance referred to stator in Ohms
theta_0 = acosd(Wo/(Vo*Io*sqrt(3)));            // No-load power factor angle in degree
Im = Io*sind(theta_0);                          // Reactive component of no-load current in Amphere
Xm = Vo/(Im*sqrt(3));                           // Magnetizing Reactance in Ohms
Pc = Wo - 3*Io^2*R1ac-Pfw;                      // Total Core loss in Watts
Rc = (Vo/sqrt(3))^2*(3/Pc);                     // Per phase core loss Resistance in Watts


// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n (a)  Magnetizing Reactance of Equivalent circuit, Xm = %.1f Ohms \n",Xm)
printf("\n (b) Per phase core loss Resistance, Pc = %.f Ohms \n",Rc)
