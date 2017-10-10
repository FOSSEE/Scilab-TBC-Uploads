// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.22 :
// Page number 119
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.5/100        // Diameter of conductor(m)
V = 132.0*10**3    // Line voltage(V)
f = 50.0           // Frequency(Hz)
h = 4.0            // Height(m)
H = 8.0            // Height of separation(m)
D_1_33 = 7.0       // Distance between conductors 1 & 3'(m)
D_1_22 = 9.0       // Distance between conductors 1 & 2'(m)
D_1_11 = 8.0       // Distance between conductors 1 & 1'(m)
D_1 = 1.0          // Distance(m)

// Calculations
r = d/2                                          // Radius of conductor(m)
e = 1.0/(36*%pi)*10**-9                          // Constant ε_0
D_12 = (h**2+D_1**2)**(1.0/2)                    // Distance between conductors 1 & 2(m)
D_122 = (h**2+D_1_11**2)**(1.0/2)                // Distance between conductors 1 & 2'(m)
D_111 = (D_1_11**2+D_1_33**2)**(1.0/2)           // Distance between conductors 1 & 1'(m)
D_1_2 = (D_12*D_122)**(1.0/2)                    // Mutual GMD(m)
D_2_3 = (D_12*D_122)**(1.0/2)                    // Mutual GMD(m)
D_3_1 = (D_1_33*D_1_11)**(1.0/2)                 // Mutual GMD(m)
D_eq = (D_1_2*D_2_3*D_3_1)**(1.0/3)              // Equivalent GMD(m)
D_s1 = (r*D_111)**(1.0/2)                        // Self GMD in position 1(m)
D_s2 = (r*D_1_22)**(1.0/2)                       // Self GMD in position 2(m)
D_s3 = (r*D_111)**(1.0/2)                        // Self GMD in position 3(m)
D_s = (D_s1*D_s2*D_s3)**(1.0/3)                  // Self GMD(m)
C_n = 2*%pi*e/log(D_eq/D_s)                      // Capacitance per phase to neutral(F/m)
X_cn = 1/(2.0*%pi*f*C_n)                         // Capacitive reactance to neutral(ohms/m)
V_ph = V/(3**0.5)                                // Phase voltage(V)
I_charg = V_ph/X_cn*1000.0                       // Charging current per phase(A/km)

// Results
disp("PART II - EXAMPLE : 2.22 : SOLUTION :-")
printf("\nCapacitive reactance to neutral, X_cn = %.2e ohms/m", X_cn)
printf("\nCharging current per phase, I_charg = %.3f A/km", I_charg)
