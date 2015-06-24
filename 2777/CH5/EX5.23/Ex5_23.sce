
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.23

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

R1 = 0.2;                      // Circuit Parameter in Ohms
R2 = 0.4;                      // Circuit Parameter in Ohms
X1 = 1.0;                      // Circuit Parameter in Ohms
X2 = 1.5;                      // Circuit Parameter in Ohms
m = 3;                          // Total Number of phase in Induction Motor
p = 2;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operating Voltage of the Inductuon Motor


// CALCULATIONS

Ws = 2*%pi*f;                               // Synchronous angular speed in Radians per second
Z = (R1+R2)+((%i)*(X1+X2));                 // At slip s=1, the impedance seen from the terminals in Ohms
s = 1;                                      // Slip

// For Case(a) Winding is connected in star

Isy_a = V/(abs(Z)*sqrt(3));                   // Current in Amphere
Tsy_a = (3*Isy_a^2*R2)/(s*Ws);                // Torque in Newton-Meter

// Winding is connected in delta

Isd_a = (V*sqrt(3))/abs(Z);                   // Current in Amphere
Tsd_a = (3*(Isd_a/sqrt(3))^2*R2)/(s*Ws);      // Torque in Newton-Meter
I_R = Isd_a/Isy_a;                            // Ratio of the line current
T_R = Tsd_a/Tsy_a;                            // Ratio of the Torque
 
// For Case(b) Machine is started using auto-transfromer and voltage is 50% reduced

Isy_b = (0.5*V)/(abs(Z)*sqrt(3));                 // Current in Amphere when Winding is connected star
Tsy_b = (3*Isy_b^2*R2)/(s*Ws);                    // Torque in Newton-Meter when Winding is connected star
Isd_b = (0.5*V*sqrt(3))/abs(Z);                   // Current in Amphere when Winding is connected delta
Tsd_b = (3*(Isd_b/sqrt(3))^2*R2)/(s*Ws);          // Torque in Newton-Meter when Winding is connected delta

// For Case(c) Both Voltage and Frequency are reduced to 50%

f_new = (10/100)*f;                               // New Frequency
Ws_c = 2*%pi*f_new;                               // Synchronous angular speed in Radians per second
Z_c = ((R1+R2)+((%i)*(X1+X2))*(f_new/f));         // At slip s=1, the impedance seen from the terminals in Ohms
Isy_c = (0.1*V)/(abs(Z_c)*sqrt(3));               // Current in Amphere when Winding is connected star
Tsy_c = (3*Isy_c^2*R2)/(s*Ws_c);                  // Torque in Newton-Meter when Winding is connected star
Isd_c = (0.1*V*sqrt(3))/abs(Z_c);                 // Current in Amphere when Winding is connected delta
Tsd_c = (3*(Isd_c/sqrt(3))^2*R2)/(s*Ws_c);        // Torque in Newton-Meter when Winding is connected delta


// DISPLAY RESULTS

disp("EXAMPLE : 5.23 : SOLUTION :-");
printf("\n For Case (a.1) Winding is connected in star \n");
printf("\n (a.1.1) Per phase impedance seen from the terminals in Ohms, Z = %.3f < %.1f Ohms \n",abs(Z),atand(imag(Z),real(Z)));
printf("\n (a.1.2) Initial Starting Current , Isy = %.2f A \n",Isy_a)
printf("\n (a.1.3) Starting Torque , Tsy = %.1f Nm \n",Tsy_a)
printf("\n For Case (a.2) Winding is connected in delta \n" );
printf("\n (a.2.1) Initial Starting Current , Isd = %.2f A \n",Isd_a)
printf("\n (a.2.2) Starting Torque , Tsd = %.2f Nm \n",Tsd_a)
printf("\n For Case (b) Machine is started using auto-transfromer and voltage is 50 percentage reduced :- (b.1) Winding is connected in star \n ")
printf("\n (b.1.1) Per phase impedance seen from the terminals in Ohms, Z = %.3f<%.1f Ohms \n",abs(Z),atand(imag(Z),real(Z)));
printf("\n (b.1.2) Initial Starting Current , Isy = %.1f A \n",Isy_b)
printf("\n (b.1.3) Starting Torque , Tsy = %.2f Nm \n",Tsy_b)
printf("\n For Case (b.2) Winding is connected in delta \n" );
printf("\n (b.2.1) Initial Starting Current , Isd = %.2f A \n",Isd_b)
printf("\n (b.2.2) Starting Torque , Tsd = %.f Nm \n",Tsd_b)
printf("\n For Case (c) Both Voltage and Frequency are reduced to 50 percentage :- (c.1) Winding is connected in star \n ");
printf("\n (c.1.1) Per phase impedance seen from the terminals in Ohms, Z =  %.2f<%.2f Ohms \n",abs(Z_c),atand(imag(Z_c),real(Z_c)));
printf("\n (c.1.2) Initial Starting Current , Isy = %.2f A \n",Isy_c)
printf("\n (c.1.3) Starting Torque , Tsy = %.2f Nm \n",Tsy_c)
printf("\n For Case (c.2) Winding is connected in delta \n" );
printf("\n (c.2.1) Initial Starting Current , Isd = %.2f A \n",Isd_c)
printf("\n (c.2.2) Starting Torque , Tsd = %.2f Nm \n",Tsd_c)
printf('\nComparing the Calculated values of starting current and torque eid rated frequency and rated voltage\n")
printf("\n                            star                           delta\n")
printf("\n                   440V,50Hz   44V,5Hz             440V,50Hz   44V,5Hz \n")
printf("\n starting current     %.2f A     %.f A               %.f A       %.2f A \n",Isy_a,Isy_c,Isd_a,Isd_c)
printf("\n starting Torque      %.1f Nm   %.2f Nm             %.f Nm      %.2f Nm \n",Tsy_a,Tsy_c,Tsd_a,Tsd_c)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- For Case (a.2) Winding is connected in delta :- (a) Initial Starting Current Isy = 254.01 A instead of %.2f A \n\n ",Isd_a); 
