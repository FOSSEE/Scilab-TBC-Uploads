// Scilab code Ex3.12: Pg 92-95 (2008)
clc; clear;
V = 200;                      // Supply voltage, voltage
C_AB = 2;                // Capacitance across branch AB, micro-farad
C_BC = 3;                 // Capacitance across branch BC, micro-farad
C_CD = 6;                 // Capacitance across branch CD, micro-farad
C_EF = 8;                // Capacitance across branch EF, micro-farad
C_BD = 4;                 // Capacitance across branch EF, micro-farad

// Part (a)
// Since 3-micro-farad & 6-micro-farad  capacitors are in series & the reciprocal of the resulting capacitance of capacitors connected in series is the sum of the reciprocal of the individual capacitances present in the circuit, therefore i.e 1/C =  1/C1 + 1/C2 
C_BCD = ( C_BC*C_CD )/(C_BC+C_CD);         // Resulting capacitance across branch BCD, micro-farad
//Since C_BCD & 4-micro-farad  capacitors are in parallel & the resulting capacitance of parallerly connected capacitors is the sum of the individual capacitance present in the circuit
C_BD = C_BCD + C_BD;         // Resulting capacitance across branch BD, micro-farad
//  Since 2-micro-farad & C_BD  capacitors are in series & the reciprocal of the resulting capacitance of capacitors connected in series is the sum of the reciprocal of the individual capacitances present in the circuit, therefore, we have
C_AD = (C_BD*C_AB)/(C_BD+C_AB);         // Resulting capacitance across branch AD, micro-farad
//Since C_AD & C_EF  capacitors are in parallel & the resulting capacitance of parallerly connected capacitors is the sum of the individual capacitance present in the circuit
C = C_AD + C_EF;         // Resulting capacitance of the circuit, micro-farad
Q = V*C;                                  // Electric  charge drawn from the supply, C

// Part (b)
Q_EF = V*C_EF;                        // The charge on the 8 micro-farad capacitor, micro-coulomb

// Part (c)
Q_AD = Q - Q_EF;                        // The charge on the 4 micro-farad capacitor, C
Q_BD = Q_AD;    // Charge in series combination of capacitors, micro-farad
// Since Q = C*V, solving for V
V_BD = Q_BD/C_BD;                    // The p.d. across the 4  F capacitor,V

// Part(d)
Q_BCD = V_BD*C_BCD;                  // Electric charge across branch BCD, C
Q_BC = Q_BCD;                        // Electric charge, C
V_BC = Q_BC/C_BC;                    // The p.d. across the 3 micro-farad capacitor
printf("\nThe charge drawn from the supply = %3.1f mC", Q/1e+03);
printf("\nThe charge on the %1d micro-farad capacitor = %3.1f mC", C_EF, Q_EF/1e+03);
printf("\nThe p.d. across the %1d micro-farad capacitor= %2d V", C_BD, V_BD);
printf("\nThe p.d. across the %1d micro-farad capacitor = %5.2f V", Q_BC, V_BC);

// Result 
// The charge drawn from the supply = 1.9 mC
// The charge on the 8 micro-farad capacitor = 1.6 mC
// The p.d. across the 6 micro-farad capacitor= 50 V
// The p.d. across the 100 micro-farad capacitor = 33.33 V 
