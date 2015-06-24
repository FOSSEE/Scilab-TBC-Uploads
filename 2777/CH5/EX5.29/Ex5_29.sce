
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.29

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

p = 4;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operating Voltage of the Inductuon Motor in Volts
out = 25*1000;                  // Power rating of the Induction motor in Watts
R0 = 2.5;                       // Circuit Parameter in Ohms
Ri = 0.5;                       // Circuit Parameter in Ohms
X0 = 1.0;                       // Circuit Parameter in Ohms
Xi = 5.0;                       // Circuit Parameter in Ohms
Rc = 500;                       // Circuit Parameter in Ohms
R1 = 0.2;                       // Circuit Parameter in Ohms
Xm = 50;                        // Circuit Parameter in Ohms
X123 = 2.0;                     // Circuit Parameter in Ohms
s = 0.05;                       // Slip


// CALCULATIONS

Ws = (2*%pi*120*f)/(p*60);                                // Synchronous speed in Radins per second
Zo = (R0/s)+(%i*X0);                                      // Outer cage impedance at slip = 0.05 in Ohms
Zi = (Ri/s)+(%i*Xi);                                      // Inner cage impedance at slip = 0.05 in Ohms
Z = (R1+%i*X123)+((Zo*Zi)/(Zo+Zi));                       // Total impdance in Ohms
I = V/Z;                                                  // Current in the Cage winding in Amphere
Io = (I*((Zo*Zi)/(Zo+Zi)))/Zo;                            // Current in the outer cage in Amphere
Ii = (I*((Zo*Zi)/(Zo+Zi)))/Zi;                            // Current in the inner cage in Amphere
T = ((3*abs(Io)^2*R0)/(s*Ws))+((3*abs(Ii)^2*Ri)/(s*Ws));  // Starting torque in Newton-Meter


// DISPLAY RESULTS

disp("EXAMPLE : 5.29 : SOLUTION :-");
printf("\n (a) Torque at slip %.2f, T = %.2f Nm \n",s,T)


