
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.10

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 3;                         // Total Number of Phase in Alternator
p = 2;                         // Total number of Poles of Alternator
V = 11*10^3;                   // Operating voltage of the Alternator in Volts
VA = 10*10^6;                  // VA rating of the Alternator in Volts-Amphere
f = 50;                        // Operating Frequency of the alternator in Hertz
pf = 0.8;                      // Power factor (lagging)
Vf = 12*10^3;                  // Operating field voltage of the Alternator in Volts
If = 160;                      // Field Current in Amphere
Ra = 0.05;                     // Armature Resistance per phase in Ohms
Xs = 1.5;                      // Winding leakage reactance per phase in Ohms
A = 150;                     // The armature MMF at rated current is equivalent to Field Current in Amphere


// CALCULATIONS

Vt = V/sqrt(3);                                     // Rated per phase Voltage in Volts
Ia = VA/(sqrt(3)*V);                                // Rated Armature Current in Amphere
pfa = acosd(pf);                                    // Power factor angle in degree
Er = Vt+Ia*(cosd(pfa)-%i*sind(pfa))*(Ra+%i*Xs);     // Induced EMF in Volts
R_a = 90 + atand(imag(Er),real(Er));                // Angle of R in Degree
R = 160 * exp( %i * (R_a) * %pi/180);               // (Line-line Voltage) Er = 11902.40V will get R from Air gap Characteristics
A_n = A * exp( %i * (-pfa) * %pi/180);
F = R - A_n;                                        // Field Current required to produce the excitation EMF in Amphere


// DISPLAY RESULTS

disp("EXAMPLE : 6.10: SOLUTION :-");
printf("\n (a) Field Current required to produce the excitation EMF, F = %.2f A \n",abs(F))
