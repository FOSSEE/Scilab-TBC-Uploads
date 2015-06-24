
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.4

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 6.4 : \n\n          Given Data \n");
printf("\n Voc(v)  215      284      320      380      400      422      452      472      488      508      520      532      540      552      560 \n");
printf("\n If(A)    6.5      8        9       10       11       12        14       15       16       17      18        19       20       22       24 \n\n");
m = 3;                         // Total Number of phase 
p = 6;                         // Total number of Poles 
V = 400;                       // Operating voltage in Volts
I = 13.5;                      // Operating current in Amphere
N = 1000;                      // Speed in RPM
Ia_scc = 13.5;                 // SCC test Armature current in Amphere at If = 9.5 A
If_scc = 9.5;                  // SCC test field Rated current in Amphere
Ia_zpf = 13.5;                 // ZPF test Armature current in Amphere at If = 24 A
If_zpf = 24;                   // ZPF test field Rated current in Amphere


// CALCULATIONS
// Some of the data obtained from OCC and SCC test Graph or Pottier triangle in Figure6.15 & Page no:-386
Ra = 1.0;                                   // Armature resistance in Ohms

// For case (a)

BC = 120;                                   // Open circuit Voltage in Volts obtained from OCC and SCC test Graph or Pottier triangle Figure6.15 & Page no:-386
Xl = BC/(sqrt(3)*Ia_scc);                   // Per phase leakage reactance in Ohms


// For Case (b.1) 0.8 pf Lagging

pfa_b1 = acosd(0.8);                                                      // Power factor angle in degree
Er_b1 = (V/sqrt(3))+(Ia_scc*(cosd(pfa_b1)-%i*sind(pfa_b1))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_b1 = 10; A_b1 = 9.5;                                                    //From OCC the field current required for Er_b1 (Should be in Line-line Voltage) Er_b1 = 379.12V will get R_b1 & A_b1 value Respectively from SCC (Figure6.15 & Page no:-386)
angle_b1 = 136.35;                                                        // Angle between R_b1 & A_b1 (figure 6.16(a) & Page no:-388) = 90'+9.48'+36.87' = 136.35'
F_b1 = sqrt((R_b1^2)+(A_b1^2)-(2*R_b1*A_b1*cosd(angle_b1)));              // From phasor diagram in figure 6.16(a) & Page no:-388 the neccessary field excitation in Amphere
Eo_b1 = 525;                                                              // Corresponding to field current F_b1 = 18.12 A the open circuit EMF from OCC is 525 V (Figure6.15 & Page no:-386)
r_b1 = 100*((Eo_b1-V)/V);                                                  // Percentage regulation 


// For Case (b.2) 0.8 pf Leading

pfa_b2 = acosd(0.8);                                                      // Power factor angle in degree
Er_b2 = (V/sqrt(3))+(Ia_scc*(cosd(pfa_b2)+%i*sind(pfa_b2))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_b2 = 8.3; A_b2 = 9.5;                                                   //From OCC the field current required for Er_b2 (Should be in Line-line Voltage) Er_b1 = 363.71 V will get R_b2 & A_b2 value Respectively from SCC (Figure6.15 & Page no:-386)
angle_b2 = 70.61;                                                         // Angle between R_b2 & A_b2 (figure 6.16(b) & Page no:-388) = 90'+17.48'-36.87' = 70.61'
F_b2 = sqrt((R_b2^2)+(A_b2^2)-(2*R_b2*A_b2*cosd(angle_b2)));              // From phasor diagram in figure 6.16(b) & Page no:-388 the neccessary field excitation in Amphere
Eo_b2 = 338;                                                              // Corresponding to field current F_b2 = 10.36 A the open circuit EMF from OCC is 338 V (Figure6.15 & Page no:-386)
r_b2 = 100*((Eo_b2-V)/V);                                                  // Percentage regulation 


// For Case (b.3) Unity pf Leading

pfa_b3 = acosd(1.0);                                                      // Power factor angle in degree
Er_b3 = (V/sqrt(3))+(Ia_scc*(cosd(pfa_b3)-%i*sind(pfa_b3))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_b3 = 13; A_b3 = 9.5;                                                    //From OCC the field current required for Er_b3 (Should be in Line-line Voltage) Er_b1 = 440.30 V will get R_b3 & A_b3 value Respectively from SCC (Figure6.15 & Page no:-386)
angle_b3 = 105.81;                                                        // Angle between R_b3 & A_b3 (figure 6.16(c) & Page no:-388) = 90'+15.81' = 105.81'
F_b3 = sqrt((R_b3^2)+(A_b3^2)-(2*R_b3*A_b3*cosd(angle_b3)));              // From phasor diagram in figure 6.16(c) & Page no:-388 the neccessary field excitation in Amphere
Eo_b3 = 520;                                                              // Corresponding to field current F_b2 = 18.10 A the open circuit EMF from OCC is 520 V (Figure6.15 & Page no:-386)
r_b3 = 100*((Eo_b3-V)/V);                                                  // Percentage regulation 


// For Case (b.4) ZPF Lagging

pfa_b4 = acosd(0);                                                      // Power factor angle in degree
Er_b4 = (V/sqrt(3))+(Ia_scc*(cosd(pfa_b4)-%i*sind(pfa_b4))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_b4 = 18; A_b4 = 9.5;                                                    //From OCC the field current required for Er_b4 (Should be in Line-line Voltage) Er_b4 = 521 V will get R_b4 & A_b4 value Respectively from SCC (Figure6.15 & Page no:-386)
angle_b4 = 177.57;                                                        // Angle between R_b4 & A_b4 = 90'-2.43'+90' = 177.57'
F_b4 = sqrt((R_b4^2)+(A_b4^2)-(2*R_b4*A_b4*cosd(angle_b4)));              // The neccessary field excitation in Amphere
Eo_b4 = 570;                                                              // Corresponding to field current F_b4 = 27.50 A the open circuit EMF from OCC is 525 V (Figure6.15 & Page no:-386)
r_b4 = 100*((Eo_b4-V)/V);                                                  // Percentage regulation 


// For Case (b.4) ZPF Lagging

pfa_b5 = acosd(0);                                                      // Power factor angle in degree
Er_b5 = (V/sqrt(3))+(Ia_scc*(cosd(pfa_b5)+%i*sind(pfa_b5))*(Ra+%i*Xl));      // Induced Voltage in Volts  
R_b5 = 6.0; A_b5 = 9.50;                                                    //From OCC the field current required for Er_b5 (Should be in Line-line Voltage) Er_b5 = 280.70 V will get R_b5 & A_b5 value Respectively from SCC (Figure6.15 & Page no:-386)
angle_b5 = 4.77;                                                        // Angle between R_b5 & A_b5 = 90'-4.77'-90' = 4.77'
F_b5 = sqrt((R_b5^2)+(A_b5^2)-(2*R_b5*A_b5*cosd(angle_b5)));              // The neccessary field excitation in Amphere
Eo_b5 = 135;                                                              // Corresponding to field current F_b4 = 27.50 A the open circuit EMF from OCC is 135 V (Figure6.15 & Page no:-386)
r_b5 = 100*((Eo_b5-V)/V);                                                  // Percentage regulation 


// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n (a)  Per phase leakage reactance, Xl = %.2f Ohms \n",Xl)
printf("\n For Case (b.1) 0.8 pf Lagging \n  Open circuit EMF, EMF = %.f V \n",Eo_b1)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b1) 
printf("\n For Case (b.2) 0.8 pf Leading \n  Open circuit EMF, EMF = %.f V \n",Eo_b2)
printf("\n Percenatge Regulation, R = %.1f Percenatge \n",r_b2) 
printf("\n For Case (b.3) Unity pf Lagging \n  Open circuit EMF, EMF = %.f V \n",Eo_b3)
printf("\n Percenatge Regulation, R = %.f Percenatge \n",r_b3) 
printf("\n For Case (b.4) ZPF Lagging \n  Open circuit EMF, EMF = %.f V\n",Eo_b4)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b4) 
printf("\n For Case (b.5) ZPF Leading \n  Open circuit EMF, EMF = %.f V \n",Eo_b5)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n\n",r_b5) 
disp(" Calculated Answer in Tabular Column")
printf("\n   Power Factor                 0.8 Lag      0.8 Lead        1.0       ZPF Lag      ZPF Lead \n")
printf("\n Open circuit EMF (V)            %.f           %.f            %.f       %.f          %.f \n",Eo_b1,Eo_b2,Eo_b3,Eo_b4,Eo_b5)
printf("\n Percenatge Regulation           %.2f         %.1f          %.f.       %.2f        %.2f \n",r_b1,r_b2,r_b3,r_b4,r_b5)
