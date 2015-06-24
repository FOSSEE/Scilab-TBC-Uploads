
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.11

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 6.11 : \n\n          Given Data \n");
printf("\n Voc( V)   12     13       13.8      14.5        15.1  \n");
printf("\n If(A)    175      200       225       250        275   \n\n");
V = 11*10^3;                   // Operating voltage of the Synchronous generator in Volts
VA = 50*10^6;                  // VA rating of the Synchronous generator in Volts-Amphere
f = 50;                        // Operating Frequency of the Synchronous generator in Hertz
N = 1500;                      // Speed of the Synchronous generator in RPM
If_scc = 200;                  // SCC test field Rated current in Amphere at rated Short circuit current
If_zpf = 400;                  // ZPF test field Rated current in Amphere at rated voltage and rated current
pf = 0.8;                      // Power factor (lagging)


// CALCULATIONS
// Some of the data obtained from OCC and SCC test Graph or Pottier triangle in Figure6.30 & Page no:-413

Vt = V/sqrt(3);                                     // Rated per phase Voltage in Volts
Ia = VA/(sqrt(3)*V);                                // Rated Armature Current in Amphere
pfa = acosd(pf);                                    // Power factor angle in degree
O = 13000;                                          // Open circuit Voltage in Volts obtained from OCC and SCC test Graph or Pottier triangle Figure6.30 & Page no:-413
Xs = O/(sqrt(3)*Ia);                                // Synchronous reactance per phase in Ohms
BC = 4000;                                          // Open circuit Voltage in Volts obtained from OCC and SCC test Graph or Pottier triangle Figure6.30 & Page no:-413
Xl = BC/(sqrt(3)*Ia );                              // Per phase leakage reactance in Ohms

// For Case (a) General (ZPF) Method

Er_a = Vt+Ia*(cosd(pfa)-%i*sind(pfa))*(%i*Xl);                            // Induced EMF in Volts
R_a = 220; A_a = 200;                                                     //From OCC the field current required for Er_a (Should be in Line-line Voltage) Er_a = 13776V will get R_a & A_a value Respectively from SCC (Figure6.30 & Page no:-403)
angle_a = 140.3;                                                          // Angle between R_a & A_a = 90'+13.43'+36.87' = 140.3'
F_a = sqrt((R_a^2)+(A_a^2)-(2*R_a*A_a*cosd(angle_a)));                    // From phasor diagram in figure 6.16(a) & Page no:-388 the neccessary field excitation in Amphere
Eo_a = 20000;                                                             // Corresponding to field current F_a = 470.90 A the open circuit EMF from OCC is 20000 V (Figure6.30 & Page no:-413)
r_a = 100*((Eo_a-V)/V);                                                   // Percentage regulation 


// For Case(b) EMF Method 

Er_b = Vt+Ia*(cosd(pfa)-%i*sind(pfa))*(%i*Xs);                            // Induced Voltage in Volts  
F_b = 500;                                                                //From OCC the field current required for Er_b (Should be in Line-line Voltage) Er_b = 21404 V will get 500A from SCC (Figure6.15 & Page no:-386)

// For Case (c) MMF Method

Er_c = Vt+Ia*(cosd(pfa)-%i*sind(pfa))*0;                                  // Induced Voltage in Volts ( Zero is multipied because Armature reistance is zero (not mentioned))
R_c = 160; A_c = 200;                                                     //From OCC the field current required for Er_c (Should be in Line-line Voltage) Er_c = 11000 V will get R_c & A_c value Respectively from SCC (Figure6.30 & Page no:-413)
angle_c = 126.27;                                                         // Angle between R_c & A_c  = 90'-0'+36.87' = 126.27' {can refer figure 6.21a at page no:-400}
F_c = sqrt((R_c^2)+(A_c^2)-(2*R_c*A_c*cosd(angle_c)));                    // From phasor diagram {can refer figure 6.21a at page no:-400} the neccessary field excitation in Amphere


// For Case (d) ASA Method

Er_d = Vt+Ia*(cosd(pfa)-%i*sind(pfa))*(%i*Xl);                            // Induced Voltage in Volts  
R_d = 220; A_d = 200;                                                     //From OCC the field current required for Er_d (Should be in Line-line Voltage) Er_d = 13800 V will get R_d & A_d value Respectively from SCC (Figure6.30 & Page no:-413)
angle_d = 126.87;                                                         // Angle between R_d & A_d = 90'+36.87' = 126.87'{can refer figure 6.22a at page no:-40}
F_d1 = sqrt((R_d^2)+(A_d^2)-(2*R_d*A_d*cosd(angle_d)));                   // from Phasor diagram {can refer figure 6.2a at page no:-400 The neccessary field excitation in Amphere
F_d = F_d1 + 30;                                                          // from Phasor diagram {can refer figure 6.2a at page no:-400 The Total neccessary field excitation in Amphere


// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n (a) Leakage Reactance, Xl = %.2f Ohms \n",Xl)
printf("\n (b) Synchronous Reactance, Xs = %.2f Ohms \n",Xs)
printf("\n For Case (a) General (ZPF) Method \n Field Current required for maintaing the rated terminal voltage for rated kVA rating at %.2f Lagging Power factor , F = %.2f A \n",pf,F_a)
printf("\n For Case (a) EMF Method \n Field Current required for maintaing the rated terminal voltage for rated kVA rating at %.2f Lagging Power factor , F = %.f A \n",pf,F_b)
printf("\n For Case (a) MMF Method \n Field Current required for maintaing the rated terminal voltage for rated kVA rating at %.2f Lagging Power factor , F = %.2f A \n",pf,F_c)
printf("\n For Case (a) ASA Method \n Field Current required for maintaing the rated terminal voltage for rated kVA rating at %.2f Lagging Power factor , F = %.f A \n",pf,F_d)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- For Case (a) General (ZPF) Method \n (a) Field Current required for maintaining the rated terminal voltage for rated kVA rating at %.2f Lagging Power factor , F = 470.90 A instead of %.2f A \n",pf,F_a);
