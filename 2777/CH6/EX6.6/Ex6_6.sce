
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.6

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 6.4 ( Data is same as Exaple 6.4 ): \n\n          Given Data \n");
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
v = V/sqrt(3);                              // Rated phase voltage in Volts


// For Case (a) 0.8 pf Lagging

pfa_a = acosd(0.8);                                                      // Power factor angle in degree
E_a = v+(Ia_scc*(cosd(pfa_a)-%i*sind(pfa_a))*Ra);                        // Induced Voltage in Volts  
R1_a = 11.8; A_a = 9.50;                                                 //From OCC the field current required for E_a (Should be in Line-line Voltage) E_a = 419.05V will get R1_a & A_a value Respectively from SCC (Figure6.15 & Page no:-386)
angle_a = 124.95;                                                        // Angle between R1_a & A_a (Figure6.21a & Page no:-400) = 90'-1.92'+36.87' = 124.95'
F_a = sqrt((R1_a^2)+(A_a^2)-(2*R1_a*A_a*cosd(angle_a)));                 // From phasor diagram in figure 6.21(a) & Page no:-400 the neccessary field excitation in Amphere
Eo_a = 538;                                                              // Corresponding to field current F_a = 18.94 A the open circuit EMF from OCC is 538 V (Figure6.15 & Page no:-386)
r_a = 100*((Eo_a-V)/V);                                                  // Percentage regulation 


// For Case (b) 0.8 pf Leading

pfa_b = acosd(0.8);                                                      // Power factor angle in degree
E_b = v+(Ia_scc*(cosd(pfa_b)+%i*sind(pfa_b))*Ra);                           // Induced Voltage in Volts  
R1_b = 11.80; A_b = 9.50;                                                 //From OCC the field current required for E_b (Should be in Line-line Voltage) E_b = 419.10V will get R1_b & A_b value Respectively from SCC (Figure6.15 & Page no:-386)
angle_b = 55.07;                                                         // Angle between R1_b & A_b (Figure6.21b & Page no:-400) = 90'-1.92'-36.87' = 55.07'
F_b = sqrt((R1_b^2)+(A_b^2)-(2*R1_b*A_b*cosd(angle_b)));                 // From phasor diagram in figure 6.21(b) & Page no:-400 the neccessary field excitation in Amphere
Eo_b = 382;                                                              // Corresponding to field current F_b = 10.10 A the open circuit EMF from OCC is 382 V (Figure6.15 & Page no:-386)
r_b = 100*((Eo_b-V)/V);                                                  // Percentage regulation 

// For Case (c) Unity pf

pfa_c = acosd(1);                                                        // Power factor angle in degree
E_c = v+(Ia_scc*(cosd(pfa_c)+%i*sind(pfa_c))*Ra)                         // Induced Voltage in Volts  
R1_c = 12.10; A_c = 9.50;                                                //From OCC the field current required for E_c (Should be in Line-line Voltage) E_c = 423.50V will get R1_c & A_c value Respectively from SCC (Figure6.15 & Page no:-386)
angle_c = 90;                                                            // Angle between R1_a & A_a (Figure6.21a & Page no:-400) = 90'
F_c = sqrt((R1_c^2)+(A_c^2)-(2*R1_c*A_c*cosd(angle_c)));                 // From phasor diagram in figure 6.21(c) & Page no:-400 the neccessary field excitation in Amphere
Eo_c = 480;                                                              // Corresponding to field current F_c = 15.38 A the open circuit EMF from OCC is 538 V (Figure6.15 & Page no:-386)
r_c = 100*((Eo_c-V)/V);                                                  // Percentage regulation 


// For Case (d) ZPF Lagging

pfa_d = acosd(0.0);                                                      // Power factor angle in degree
E_d = v+(Ia_scc*(cosd(pfa_d)-%i*sind(pfa_d))*Ra)                         // Induced Voltage in Volts  
R1_d = 11.20; A_d = 9.50;                                                //From OCC the field current required for E_d (Should be in Line-line Voltage) E_d = 400.80V will get R1_d & A_d value Respectively from SCC (Figure6.15 & Page no:-386)
angle_d = 179.40;                                                        // Angle between R1_d & A_d = 90'-0.6'+90' = 179.40'
F_d = sqrt((R1_d^2)+(A_d^2)-(2*R1_d*A_d*cosd(angle_d)));                 // From phasor diagram the neccessary field excitation in Amphere
Eo_d = 545;                                                              // Corresponding to field current F_d = 18.12 A the open circuit EMF from OCC is 545 V (Figure6.15 & Page no:-386)
r_d = 100*((Eo_d-V)/V);                                                  // Percentage regulation 

// For Case (d) ZPF Lagging

pfa_e = acosd(0.0);                                                      // Power factor angle in degree
E_e = v+(Ia_scc*(cosd(pfa_e)+%i*sind(pfa_e))*Ra)                         // Induced Voltage in Volts  
R1_e = 11.20; A_e = 9.50;                                                //From OCC the field current required for E_e (Should be in Line-line Voltage) E_d = 400.80V will get R1_e & A_e value Respectively from SCC (Figure6.15 & Page no:-386)
angle_e = 0.60;                                                          // Angle between R1_e & A_e = 90'+0.6'-90' = 0.60'
F_e = sqrt((R1_e^2)+(A_e^2)-(2*R1_e*A_e*cosd(angle_e)));                 // From phasor diagram the neccessary field excitation in Amphere
Eo_e = 63;                                                               // Corresponding to field current F_e = 1.70 A the open circuit EMF from OCC is 545 V (Figure6.15 & Page no:-386)
r_e = 100*((Eo_e-V)/V);                                                  // Percentage regulation 



// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n For Case (a) 0.8 pf Lagging \n  Open circuit EMF, EMF = %.f V \n",Eo_a)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_a) 
printf("\n For Case (b) 0.8 pf Leading \n  Open circuit EMF, EMF = %.f V \n",Eo_b)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b) 
printf("\n For Case (c) Unity pf Lagging \n  Open circuit EMF, EMF = %.f V \n",Eo_c)
printf("\n Percenatge Regulation, R = %.f Percenatge \n",r_c) 
printf("\n For Case (d) ZPF Lagging \n  Open circuit EMF, EMF = %.f V\n",Eo_d)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_d) 
printf("\n For Case (e) ZPF Leading \n  Open circuit EMF, EMF = %.f V \n",Eo_e)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n\n",r_e) 
disp(" Calculated Answer in Tabular Column")
printf("\n   Power Factor                 0.8 Lag      0.8 Lead        1.0       ZPF Lag      ZPF Lead \n")
printf("\n Open circuit EMF (V)            %.f           %.f          %.f         %.f          %.f \n",Eo_a,Eo_b,Eo_c,Eo_d,Eo_e)
printf("\n Percenatge Regulation           %.2f         %.2f          %.f       %.2f        %.2f \n",r_a,r_b,r_c,r_d,r_e)
