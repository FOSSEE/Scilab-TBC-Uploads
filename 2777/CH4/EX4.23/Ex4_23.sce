
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.23

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N1 = 600;                   // Speed of the DC shunt Motor in RPM
Out_hp = 10;                // Output of the DC shunt Motor in HP
V = 220;                    // Motor operating Volatge in Volts
Ra = 1.5;                   // Armature Resistance in Ohms
Rf = 250;                   // Field Resistance in Ohms
eta = 88/100;               // Operating Efficiency of the Motor 
Rf_a = 50;                  // Resistance inserted to the field circuit


// CALCULATIONS

out = Out_hp * 746                  // Output of the DC Motor in watts
I =  out/(V * eta);                 // Rated current in Amphere
If1 = V/Rf;                         // Field current in Amphere
Ia1 = I - If1;                      // Aramature current in Amphere
E1 = V - Ra*Ia1;                    // Back EMF in Volts
If2 = V/(Rf+Rf_a);                  // New Field current in Amphere after 50 Ohms Resistance inserted to the field circuit

// Refer page no. 217 we have T1 = K*If1*Ia1 proportional to 1/W1^2 and T1 = K*If2*Ia2 proportional to 1/W2^2 thus T1/T2 = (If1*Ia1)/(If2*Ia2) = (W2^2)/(W1^2) = (N2^2)/(N1^2), Ia2 = (If1*Ia1*W1^2)/(If1*W1^2) = (0.88*37.65*N2^2)/(0.733*600*600) 
// Now New EMF E2 is E2 = V - Ia2*Ra, E1/E2 = (k*If1*N1)/(k*If2*N2), E2 = (0.733*N2)/(0.88*600) = 220 - (0.88*37.65*1.5*N2^2)/(0.733*600*600) Thus we have 0.001388*N2^2 = 220 - 1.833*10^-4*N2
N2 = poly ([-220 0.001388 1.833*10^-4],'x','coeff');                 // Expression for the new speed of the motor in Quadratic form
r = roots (N2);                                                     // Value of the New speed of the motor in RPM


// DISPLAY RESULTS

disp("EXAMPLE : 4.23 : SOLUTION :-") ;
printf("\n (a) New speed of the motor, N2 = %.2f RPM nearly %.f RPM \n",r(2,1),r(2,1)); 
