
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.31

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Wsc = 900;                     // Power at Blocked Rotor test in Watts
Vsc = 200;                     // Voltage at Blocked Rotor test in Volts
Isc = 5.0;                     // Current at Blocked Rotor test in Amphere
Wo = 60;                       // Power at No-load test in Watts
Vo = 220;                      // Voltage at No-load test in Volts
Io = 1.5;                      // Current at No-load test in Amphere 
m = 1;                         // Total Number of phase in Induction Motor
p = 4;                         // Total number of Poles of Induction Motor
V = 220;                       // Operating voltage of the Induction motor in Volts
f = 50;                        // Frequency in Hertz
s = 0.07;                      // Slip
R1 = 12;                       // Resistance of the main primary winding in Ohms


// CALCULATIONS

Zsc = Vsc/Isc;                      // Impedance in Blocked Rotor test in Ohms
Rsc = Wsc/(Isc^2);                  // Resistance in Blocked Rotor test in Ohms
Xsc = sqrt((Zsc^2)-(Rsc^2));        // Reactance in Blocked Rotor test in Ohms
Xl1 = Xsc/2;                        // Leakage reactance of stator and rotor to be equal in Ohms
Xl2 = Xsc/2;                        // Leakage reactance of stator and rotor to be equal in Ohms
R2 = Rsc-R1;                    // Equivalent resistance of rotor referred to stator in Ohms
Z0 = Vo/Io;                         // Impedance in Blocked Rotor test in Ohms
R0 = Wo/(Io^2);                     // Resistance in Blocked Rotor test in Ohms
X0 = sqrt((Z0^2)-(R0^2));           // Reactance in Blocked Rotor test in Ohms
Wloss = Wo - ((Io^2)*(R1+R2));      // Loss in Watts
Xm_half = X0-Xl1-Xl2/2;
R2f = (R2/s)+((%i*Xl2)/2);                             // Forward resiatance in Ohms
Zf = ((%i*Xm_half)*R2f)/(%i*Xm_half+R2f);              // Total Forward impedance in Ohms
R2b = (R2/(2-s))+((%i*Xl2)/2);                         // Backward resiatance in Ohms
Zb = ((%i*Xm_half)*R2b)/(%i*Xm_half+R2b);              // Total Backward impedance in Ohms
Z = Zf+Zb+(R1+%i*Xl1);                                 // Total impedance in Ohms
I = V/Z;                                               // Motor Current in Amphere
pf = cosd(atand(imag(I),real(I)));                      // Power Factor (lagging)


// DISPLAY RESULTS

disp("EXAMPLE : 5.31 : SOLUTION :-");
printf("\n Circuit Parameters are \n\n (a) Leakage reactance of stator and rotor to be equal, Xl1 = Xl2 = %.2f Ohms \n",Xl1)
printf("\n (b) Equivalent resistance of rotor referred to stator, R2 = %.f Ohms \n",R2)
printf("\n (c) Total Forward impedance, Zf = %.1f < %.2f Ohms \n",abs(Zf),atand(imag(Zf),real(Zf)))
printf("\n (c) Total Backward impedance, Zb = %.2f < %.2f Ohms \n",abs(Zb),atand(imag(Zb),real(Zb)))
printf("\n (d) Total impedance, Z = %.2f < %.2f Ohms \n",abs(Z),atand(imag(Z),real(Z)))
printf("\n (e) Input Current, I = %.2f < %.2f A \n",abs(I),atand(imag(I),real(I)))
printf("\n (f) Power factor, pf = %.2f Lagging \n",pf)


