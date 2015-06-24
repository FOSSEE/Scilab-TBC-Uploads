
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.5a

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 6.5a( Data is same as Example 6.4): \n\n          Given Data \n");
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
v = V/sqrt(3);                              // Rated phase Voltage in Volts

// For case (a)

EMF_a1 = 345;                               // From OCC and SCC test Graph or Pottier triangle in Figure6.15 & Page no:-386 open-circuit line-line voltage per phase is 345vVfor If = 9.50A in Volts
Zs_a1 = EMF_a1/(Ia_zpf*sqrt(3));            // Unsaturated synchronous impedance at If=9.50A in Ohms
Xs_a1 = sqrt((Zs_a1^2)-(Ra^2));             // Synchronous reactance at If =9.50A in Ohms
Ia_a2 = 15.75;                              // Current from SCC in Figure6.15 & Page no:-386 is 15.75A for correspounding to the rated Voltage in Volts
Zs_a2 = V/(Ia_a2*sqrt(3));                  // Unsaturated synchronous impedance at If=9.50A in Ohms
Xs_a2 = sqrt((Zs_a2^2)-(Ra^2));             // Synchronous reactance at If =9.50A in Ohms

// For Case (b.1) 0.8 pf Lagging

pfa_b1 = acosd(0.8);                                                     // Power factor angle in degree
real_b1 = (v+Ia_zpf*Ra*cosd(pfa_b1)+Ia_zpf*Xs_a1*sind(pfa_b1));
imag_b1 = (Ia_zpf*Xs_a1*cosd(pfa_b1)-Ia_zpf*Ra*sind(pfa_b1));
E_b1 = sqrt(real_b1^2+imag_b1^2);                                        // Induced Voltage pr phase in Volts from Figure6.19 (a) & Page no:-394 shows the phasor diagram for lagging pf
del_b1 = atand(imag_b1/real_b1);                                         // Power angle in degree
r_b1 = 100*(E_b1-v)/v;                                                   // Percantage regulation 


// For Case (b.2) 0.8 pf Leading

pfa_b2 = acosd(0.8);                                                     // Power factor angle in degree
real_b2 = (v+Ia_zpf*Ra*cosd(pfa_b2)-Ia_zpf*Xs_a1*sind(pfa_b2));
imag_b2 = (Ia_zpf*Xs_a1*cosd(pfa_b2)+Ia_zpf*Ra*sind(pfa_b2));
E_b2 = sqrt(real_b2^2+imag_b2^2);                                        // Induced Voltage pr phase in Volts from Figure6.19 (b) & Page no:-394 shows the phasor diagram for leading pf
del_b2 = atand(imag_b2/real_b2);                                         // Power angle in degree
r_b2 = 100*(E_b2-v)/v;                                                   // Percantage regulation 


// For Case (b.3) Unity pf

pfa_b3 = acosd(1.0);                                                     // Power factor angle in degree
real_b3 = (v+Ia_zpf*Ra);
imag_b3 = (Ia_zpf*Xs_a1);
E_b3 = sqrt(real_b3^2+imag_b3^2);                                        // Induced Voltage pr phase in Volts from Figure6.19 (a) & Page no:-394 shows the phasor diagram for unity pf
del_b3 = atand(imag_b3/real_b3);                                         // Power angle in degree
r_b3 = 100*(E_b3-v)/v;                                                   // Percantage regulation 

// For Case (b.4) ZPF pf Lagging

pfa_b4 = acosd(0);                                                       // Power factor angle in degree
real_b4 = (v+Ia_zpf*Xs_a1);
imag_b4 = (-Ia_zpf*Ra);
E_b4 = sqrt(real_b4^2+imag_b4^2);                                        // Induced Voltage pr phase in Volts ZPF for lagging pf
del_b4 = atand(imag_b4/real_b4);                                         // Power angle in degree
r_b4 = 100*(E_b4-v)/v;                                                   // Percantage regulation 

// For Case (b.5) ZPF pf Leading

pfa_b5 = acosd(0);                                                       // Power factor angle in degree
real_b5 = (v-Ia_zpf*Xs_a1);
imag_b5 = (Ia_zpf*Ra);
E_b5 = sqrt(real_b5^2+imag_b5^2);                                        // Induced Voltage pr phase in Volts ZPF for lagging pf
del_b5 = atand(imag_b5/real_b5);                                         // Power angle in degree
r_b5 = 100*(E_b5-v)/v;                                                   // Percantage regulation 




// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n (a.1)  Synchronous reactance for rated current at If = %.2f, Xs = %.2f Ohms \n",If_scc,Xs_a1)
printf("\n (a.2)  Synchronous reactance for rated per phase Voltage  at v  = %.f, Xs = %.2f Ohms \n",v,Xs_a2)
printf("\n For Case (b.1) 0.8 pf Lagging \n  Induced EMF per phase , EMF = %.2f V \n",E_b1)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b1) 
printf("\n Power angle = %.2f degree \n",del_b1) 
printf("\n For Case (b.2) 0.8 pf Leading \n  Induced EMF per phase, EMF = %.2f V \n",E_b2)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b2) 
printf("\n Power angle = %.2f degree \n",del_b2) 
printf("\n For Case (b.3) Unity pf Lagging \n  Induced EMF per phase, EMF = %.2f V \n",E_b3)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b3)
printf("\n Power angle = %.2f degree \n",del_b3)  
printf("\n For Case (b.4) ZPF Lagging \n  Induced EMF per phase, EMF = %.2f V\n",E_b4)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b4) 
printf("\n Power angle = %.1f degree \n",del_b4) 
printf("\n For Case (b.5) ZPF Leading \n  Induced EMF per phase, EMF = %.2f V \n",E_b5)
printf("\n Percenatge Regulation, R = %.2f Percenatge \n",r_b5) 
printf("\n Power angle = %.2f degree \n\n",del_b5) 
disp(" Calculated Answer in Tabular Column")
printf("\n   Power Factor                 0.8 Lag      0.8 Lead        1.0         ZPF Lag         ZPF Lead \n")
printf("\n Open circuit EMF (V)           %.2f        %.2f         %.2f       %.2f          %.2f \n",E_b1,E_b2,E_b3,E_b4,E_b5)
printf("\n Percenatge Regulation           %.2f         %.2f          %.2f.       %.2f         %.2f \n",r_b1,r_b2,r_b3,r_b4,r_b5)
printf("\n Power angle                    %.2f         %.2f          %.2f.       %.1f           %.2f \n",del_b1,del_b2,del_b3,del_b4,del_b5)
