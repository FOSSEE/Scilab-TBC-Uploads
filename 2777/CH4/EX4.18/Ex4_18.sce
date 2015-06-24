
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.18

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V = 500;                                            // Operating voltage of the DC series motor in Volts
P_hp = 10;                                          // Operating Power in HP 
Il = 40;                                            // Lower currents limit in Amphere
Ih = 60;                                            // Higher currents limit in Amphere
f = 0.5/100;                                        // Motor flux rises by 0.5% per amphere
Rt = 0.8;                                           // Motor terminal resistance in Ohms
eta = 90/100;                                       // Motor efficiency

// CALCULATIONS

E1 = V-Il*Rt;                                       // Induced EMF E1 in Volts
// Induced EMF, E2 = 500-60(0.8+r4) = 500 - 60*R4 where r4 is the fourth-step resistance, and R4 = 0.8+r4 and E1 = 1.1*E2 , 500 - 40*0.8 = 1.1*(500-60(0.8+r4)), 500-32 = 550-66*R4 thus we get, R4 = (550-500+32)/66 refer page no. 197
R4 = (V-(E1/1.1))/Ih;
r4 = R4 - Rt;                                           // Fourth-step resistance in ohms
R3 = (V-((V-Il*R4)/1.1))/Ih;
r3 = R3 - R4;                                           // Third-step resistance in ohms
R2 = (V-((V-Il*R3)/1.1))/Ih;
r2 = R2 - R3;                                           // Second-step resistance in ohms
R1 = (V-((V-Il*R2)/1.1))/Ih;
r1 = R1 - R2;                                           // First-step resistance in ohms


// DISPLAY RESULTS

disp("EXAMPLE : 4.18: SOLUTION :-");
printf("\n (a) The resistance steps in series motor stater are %.3f Ohms,%.4f Ohms, %.3f Ohms and %.2f Ohms \n",r1,r2,r3,r4)
