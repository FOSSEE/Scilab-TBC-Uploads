
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.9

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 6.9 : \n\n          Given Data \n");
printf("\n Voc(kV)   10     10.80     11.50     12.10       12.60       13       14       14.50     14.80 \n");
printf("\n If(A)    175      200       225       250        275        300       400       450      500 \n\n");
p = 6;                         // Total number of Poles of Alternator
V = 11*10^3;                   // Operating voltage of the Alternator in Volts
N = 1500;                      // speed of the Alternator in RPM
Ia_scc = 2099;                 // SCC test Armature current in Amphere at If = 200 A
If_scc = 200;                  // SCC test field Rated current in Amphere
Ia_pt = 2099;                  // Pottier test Armature current in Amphere at If = 450 A
If_pt = 450;                   // Pottier test field Rated current in Amphere
VA = 40*10^6;                  // VA rating of the Alternator in Volts-Amphere
f = 50;                        // Operating Frequency of the Alternator in Hertz
pf = 0.8;                      // Power factor (lagging)

// CALCULATIONS
// Some of the data obtained from OCC and SCC test Graph or Pottier triangle in Figure6.24 & Page no:-407

v = V/sqrt(3);                                                  // Rated phase Voltage in Volts
I = VA/(sqrt(3)*V);                                             // Full-load phase current in Amphere
Xl = 0.4481;                                                    // Leakage reactance in Ohms From OCC and SCC test Graph or Pottier triangle in Figure6.24 & Page no:-407 


// For Case(a) General Method

pfa_a = acosd(pf);                                                       // Power factor angle in degree
Er_a = (V/sqrt(3))+(Ia_scc*(cosd(pfa_a)-%i*sind(pfa_a))*Xl);             // Induced Voltage in Volts  
R_a = 208.4; A_a = 200;                                                    //From OCC the field current required for Er_a (Should be in Line-line Voltage) Er_a = 11043.66 V will get R_a & A_a value Respectively from SCC (Figure6.24 & Page no:-407)
angle_a = 131.93;                                                        // Angle between R_a & A_a (Figure6.25(a) & Page no:-408) = 90'+5.06'+36.87' = 131.93'
F_a = sqrt((R_a^2)+(A_a^2)-(2*R_a*A_a*cosd(angle_a)));                   // From phasor diagram in figure 6.25(a) & Page no:-408 the neccessary field excitation in Amphere
Eo_a = 13720;                                                            // Corresponding to field current, F_a = 373 A the open circuit EMF from OCC is 560 V (Figure6.15 & Page no:-386)
r_a = 100*((Eo_a-V)/V);                                                  // Percentage regulation 


// For Case (b) ASA Method

pfa_b = acosd(pf);                                                       // Power factor angle in degree
Er_b = (V/sqrt(3))+Ia_scc*(cosd(pfa_b)-%i*sind(pfa_b))*Xl;               // Induced Voltage in Volts  
R_b = 160; A_b = 200;                                                    //From OCC the field current required for Er_b (Should be in Line-line Voltage) Er_b = 11043.66 V will get R_b & A_b value Respectively from SCC (Figure6.24 & Page no:-407)
angle_b = 126.87;                                                        // Angle between R_b2 & A_b2 (Figure6.22b & Page no:-403) = 90'+36.87' = 126.87'
F_b = sqrt((R_b^2)+(A_b^2)-(2*R_b*A_b*cosd(angle_b)));                   // From phasor diagram in figure 6.25(b) & Page no:-408 the neccessary field excitation in Amphere
Eo_b = 13660;                                                            // Corresponding to field current ( OF'=OF+FF') F_b = 337.88+15.38=337.88  A the open circuit EMF from OCC is 13660 V (Figure6.15 & Page no:-386)
r_b = 100*((Eo_b-V)/V);                                                  // Percentage regulation 


// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n For Case (a) General(ZPF) Method \n  Induced EMF, EMF = %.f < %.2f V \n",abs(Er_a),atand(imag(Er_a),real(Er_a)))
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_a) 
printf("\n For Case (b) ASA Method \n  Induced EMF, EMF = %.f < %.2f V \n",abs(Er_b),atand(imag(Er_b),real(Er_b)))
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- For Case (a) General(ZPF) Method (a) Induced EMF = 6376<-5.07 degree instead of %.f < %.2f \n ",abs(Er_a),atand(imag(Er_a),real(Er_a)))
printf("\n                                     For Case (b) ASA Method          (a) Induced EMF = 6376<-5.07 degree instead of %.f < %.2f \n\n ",abs(Er_b),atand(imag(Er_b),real(Er_b)))
printf(" CALCULATION OF THE POWER ANGLE IS NOT CALCULATED IN THE TEXT BOOK FOR THIS PROBLEM\n ")
printf("\n INDUCED EMF AND PERCENTAGE REGULATION IS APPROXIMATED VALUE BECACUSE IN THE TEXT BOOK, CALCULATED INDUCED EMF IS WRONGLY PRINTED")
