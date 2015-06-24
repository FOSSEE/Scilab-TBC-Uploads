
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.4

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 2;                                          // Total number of phase in AC drag-cup servo Motor
p = 2;                                          // Number of poles
Va = 220;                                       // Operating Voltage of the servo Motor in Volts
R1 = 350;                                       // Circuit Parameter in Ohms
R2 = 250;                                       // Circuit Parameter in Ohms
X1 = 60;                                        // Circuit Parameter in Ohms
X2 = 50;                                        // Circuit Parameter in Ohms
Xm = 900;                                       // Circuit Parameter in Ohms
s = 0.3;                                        // Slip
p = 0.8;                                        // Ratio of the control winding and main winding voltage


// CALCULATIONS

Va1 = (Va*(1+p))/2;                                        // Positive sequence voltage in Volts
Va2 = (Va*(1-p))/2;                                        // Negative sequence voltage in Volts
Z11 = (R1+%i*X1);
Z12 =  (((%i*Xm)*(R2/s+%i*X2))/(%i*Xm+R2/s+%i*X2));
Z1 = Z11 + Z12 ;                                           // Positive sequence impedance in Ohms
Z2 = (R1+%i*X1) + (((%i*Xm)*(R2/(2-s)+%i*X2))/(%i*Xm+R2/(2-s)+%i*X2));    // Negative sequence impedance in Ohms
Ia1 = Va1/Z1;                                              // Positive sequence current in Amphere
I12 = (Ia1*Z12)/(R2/s);                                    // Positive sequence current in Amphere
Ia2 = Va2/Z2;                                              // Negative sequence current in Amphere
I22 = (Ia2*Z2)/(R2/(2-s));                                 // Negative sequence current in Amphere
T1 = 2*(abs(I12)^2)*R2/s;                                  // Positive sequence torque in Newton-meter
T2 = 2*(abs(I22)^2)*R2/(2-s);                              // Negative sequence torque in Newton-meter
T = T1 - T2;                                               // Resultant torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 7.4: SOLUTION :-");
printf("\n (a) Resultant torque, T = %.2f N-m \n",T)
printf("\n\n IN THE ABOVE PROBLEM ALL THE VALUES PRINTED IN THE TEXT BOOK ARE NOT ACCURATE, SO VALUE OF THE TORQUE AND LINE CURRENTS ARE DIFFERING WHEN WE COMPARED TO THE TEXT BOOK ANSWERS FOR THE SAME. \n\n")
printf("\n IN EVERY CALCULATED PARAMETER IN THE TEXT BOOK SLIGHT VARIATION IS THERE AS WE COMPARED TO MANUAL CALCULATION ITS FROM POSITIVE SEQUENCE IMPEDANCE (Z1) \n")

