
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.7

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 6.7 ( Data as same as Example 6.4 ) : \n\n          Given Data \n");
printf("\n Voc(v)  215      284      320      380      400      422      452      472      488      508      520      532      540      552      560 \n");
printf("\n If(A)    6.5      8        9       10       11       12        14       15       16       17      18        19       20       22       24 \n\n");
m = 3;                         // Total Number of phase in Induction Motor
p = 6;                         // Total number of Poles of Induction Motor
V = 400;                       // Operating voltage of the Induction motor in Volts
I = 13.5;                      // Operating current of the Induction motor in Amphere
N = 1000;                      // speed of the Induction motor in RPM
Ia_scc = 13.5;                 // SCC test Armature current in Amphere at If = 9.5 A
If_scc = 9.5;                  // SCC test field Rated current in Amphere
Ia_zpf = 13.5;                 // ZPF test Armature current in Amphere at If = 24 A
If_zpf = 24;                   // ZPF test field Rated current in Amphere


// CALCULATIONS
// Some of the data obtained from OCC and SCC test Graph or Pottier triangle in Figure6.15 & Page no:-386
Ra = 1.0;                                   // Armature resistance in Ohms
BC = 120;                                   // Open circuit Voltage in Volts obtained from OCC and SCC test Graph or Pottier triangle Figure6.15 & Page no:-386
Xl = BC/(sqrt(3)*Ia_scc);                   // Per phase leakage reactance in Ohms for this referring to example6.4 & page no:- 386 

// For Case (a) 0.8 pf Lagging

pfa_a = acosd(0.8);                                                      // Power factor angle in degree
Er_a = (V/sqrt(3))+(Ia_scc*(cosd(pfa_a)-%i*sind(pfa_a))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_a = 9.8; A_a = 9.5;                                                    //From OCC the field current required for Er_a (Should be in Line-line Voltage) Er_a = 479.60V will get R_a & A_a value Respectively from SCC (Figure6.15 & Page no:-386)
angle_a = 126.87;                                                        // Angle between R_a & A_a (Figure6.22(a) & Page no:-403) = 90'+36.87' = 126.87'
F_a = sqrt((R_a^2)+(A_a^2)-(2*R_a*A_a*cosd(angle_a)));                   // From phasor diagram in figure 6.22(a) & Page no:-403 the neccessary field excitation in Amphere
Eo_a = 560;                                                              // Corresponding to field current ( OF'=OF+FF'), F_a = 17.28 + 6.2 = 23.46 A the open circuit EMF from OCC is 560 V (Figure6.15 & Page no:-386)
r_a = 100*((Eo_a-V)/V);                                                  // Percentage regulation 


// For Case (b) 0.8 pf Leading

pfa_b = acosd(0.8);                                                      // Power factor angle in degree
Er_b = (V/sqrt(3))+(Ia_scc*(cosd(pfa_b)+%i*sind(pfa_b))*(Ra+%i*Xl));     // Induced Voltage in Volts  
R_b = 9.8; A_b = 9.5;                                                    //From OCC the field current required for Er_b (Should be in Line-line Voltage) Er_b = 363.90 V will get R_b & A_b value Respectively from SCC (Figure6.15 & Page no:-386)
angle_b = 53.13;                                                         // Angle between R_b2 & A_b2 (Figure6.22b & Page no:-403) = 90'-36.87' = 53.13'
F_b = sqrt((R_b^2)+(A_b^2)-(2*R_b*A_b*cosd(angle_b)));                   // From phasor diagram in figure 6.22(b) & Page no:-403 the neccessary field excitation in Amphere
Eo_b = 380;                                                              // Corresponding to field current ( OF'=OF+FF') F_b = 8.62+1.5=10.12 A the open circuit EMF from OCC is 380 V (Figure6.15 & Page no:-386)
r_b = 100*((Eo_b-V)/V);                                                  // Percentage regulation 


// For Case (c) Unity pf Leading

pfa_c = acosd(1.0);                                                      // Power factor angle in degree
Er_c = (V/sqrt(3))+(Ia_scc*(cosd(pfa_c)-%i*sind(pfa_c))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_c = 9.8; A_c = 9.5;                                                    //From OCC the field current required for Er_c (Should be in Line-line Voltage) Er_c = 440.11 V will get R_c & A_c value Respectively from SCC (Figure6.15 & Page no:-386)
angle_c = 90;                                                            // Angle between R_c & A_c (Figure6.22c & Page no:-403) = 90' = 90'
F_c = sqrt((R_c^2)+(A_c^2)-(2*R_c*A_c*cosd(angle_c)));                   // From phasor diagram in figure 6.22(c) & Page no:-403 the neccessary field excitation in Amphere
Eo_c = 510;                                                              // Corresponding to field current ( OF'=OF+FF') F_c = 13.65+3.0=16.65A the open circuit EMF from OCC is 510 V (Figure6.15 & Page no:-386)
r_c = 100*((Eo_c-V)/V);                                                  // Percentage regulation 


// For Case (d) ZPF Lagging

pfa_d = acosd(0);                                                        // Power factor angle in degree
Er_d = (V/sqrt(3))+(Ia_scc*(cosd(pfa_d)-%i*sind(pfa_d))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_d = 9.8; A_d = 9.5;                                                    //From OCC the field current required for Er_d (Should be in Line-line Voltage) Er_d = 570.20 V will get R_d & A_d value Respectively from SCC (Figure6.15 & Page no:-386)
angle_d = 180.0;                                                         // Angle between R_d & A_d = 90'+90' = 180'
F_d = sqrt((R_d^2)+(A_d^2)-(2*R_d*A_d*cosd(angle_d)));              // The neccessary field excitation in Amphere
Eo_d = 600;                                                              // Corresponding to field current ( OF'=OF+FF') F_d = 19.3+16=35.30 A the open circuit EMF from OCC is 525 V (Figure6.15 & Page no:-386)
r_d = 100*((Eo_d-V)/V);                                                  // Percentage regulation 


// For Case (e) ZPF Lagging

pfa_e = acosd(0);                                                        // Power factor angle in degree
Er_e = (V/sqrt(3))+(Ia_scc*(cosd(pfa_e)+%i*sind(pfa_e))*(Ra+%i*Xl));     // Induced Voltage in Volts  
R_e = 9.8; A_e = 9.50;                                                   //From OCC the field current required for Er_e (Should be in Line-line Voltage) Er_e = 281.10 V will get R_e & A_e value Respectively from SCC (Figure6.15 & Page no:-386)
angle_e = 0.0;                                                           // Angle between R_e & A_e = 90'-90' = 0.0'
F_e = sqrt((R_e^2)+(A_e^2)-(2*R_e*A_e*cosd(angle_e)));                   // The neccessary field excitation in Amphere
Eo_e = 5;                                                                // Corresponding to field current ( OF'=OF+FF') F_e = 0.0+0.30=0.30 A the open circuit EMF from OCC is 5 V (Figure6.15 & Page no:-386)
r_e = 100*((Eo_e-V)/V);                                                  // Percentage regulation 


// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n  Per phase leakage reactance, Xl = %.2f Ohms \n",Xl)
printf("\n For Case (a) 0.8 pf Lagging \n  Open circuit EMF, EMF = %.f V \n",Eo_a)
printf("\n Percenatge Regulation, R = %.f Percenatge \n",r_a) 
printf("\n For Case (b) 0.8 pf Leading \n  Open circuit EMF, EMF = %.f V \n",Eo_b)
printf("\n Percenatge Regulation, R = %.f Percenatge \n",r_b) 
printf("\n For Case (c) Unity pf Lagging \n  Open circuit EMF, EMF = %.f V \n",Eo_c)
printf("\n Percenatge Regulation, R = %.f Percenatge \n",r_c) 
printf("\n For Case (d) ZPF Lagging \n  Open circuit EMF, EMF = %.f V\n",Eo_d)
printf("\n Percenatge Regulation, R = %.f Percenatge \n",r_d) 
printf("\n For Case (e) ZPF Leading \n  Open circuit EMF, EMF = %.f V \n",Eo_e)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n\n",r_e) 
disp(" Calculated Answer in Tabular Column")
printf("\n   Power Factor                 0.8 Lag      0.8 Lead        1.0       ZPF Lag      ZPF Lead \n")
printf("\n Open circuit EMF (V)            %.f           %.f            %.f       %.f          %.f \n",Eo_a,Eo_b,Eo_c,Eo_d,Eo_e)
printf("\n Percenatge Regulation           %.f             %.f          %.1f        %.f        %.2f \n",r_a,r_b,r_c,r_d,r_e)
