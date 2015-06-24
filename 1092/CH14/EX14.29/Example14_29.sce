// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-29

clear; clc; close; // Clear the work space and console.

// Given data
// From diagram in fig.14-25a
Z_pu_1 = %i*0.1 ; //  p.u impedance 
MVA_2 = 80 ; // MVA rating os system 2
MVA_1 = 100 ; // MVA rating of Tr.s 1 and 2
V_2 = 30 ; // voltage in KV
V_1 = 32 ; // voltage in KV

Z_pu_2 = %i*0.15 ; //  p.u impedance 

V_b1 = 100 ; // base voltage of Tr.1

Z_line = %i*60 ; // Line impedance 

MVA_M1 = 20 ; // MVA rating of motor load 1
Z_pu_M1 = %i*0.15 ; // p.u impedance of motor load M1

MVA_M2 = 35 ; // MVA rating of motor load 2
Z_pu_M2 = %i*0.25 ; // p.u impedance of motor load M2

MVA_M3 = 25 ; // MVA rating of motor load 3
Z_pu_M3 = %i*0.2 ; // p.u impedance of motor load M3

V_M = 28 ; // voltage across motor loads M1,M2,M3 in kV

// Calculations
// case a
Z_1_pu = Z_pu_1*(MVA_2/MVA_1)*(V_2/V_1)^2 ; // p.u imepedance of T1

// case b
Z_2_pu = Z_pu_2*(MVA_2/MVA_1)*(V_2/V_1)^2 ; // p.u imepedance of T2

// case c
V_b_line = V_b1*(V_1/V_2) ; // base voltage of the long-transmission line in kV

// case d
MVA_b = 80 ; // MVA rating
V_b = V_b_line ;
Z_line_pu = Z_line*(MVA_b/(V_b)^2); // p.u impedance of the transmission line

// case e
Z_M1_pu = Z_pu_M1 * (MVA_2/MVA_M1)*(V_M/V_1)^2 ; // p.u impedance of motor load M1
Z_M2_pu = Z_pu_M2 * (MVA_2/MVA_M2)*(V_M/V_1)^2 ; // p.u impedance of motor load M2
Z_M3_pu = Z_pu_M3 * (MVA_2/MVA_M3)*(V_M/V_1)^2 ; // p.u impedance of motor load M3

// Display the results
disp("Example 14-29 Solution : ");

printf(" \n a: p.u imepedance of T1 :\n    Z_1(pu) = ");disp(Z_1_pu);

printf(" \n b: p.u imepedance of T2 :\n    Z_2(pu) = ");disp(Z_2_pu);

printf(" \n c: base voltage of the long-transmission line :\n    V_b(line) = %.1f kV \n",V_b_line);

printf(" \n d: p.u impedance of the transmission line :\n    Z(line)_pu = ");disp(Z_line_pu);

printf(" \n e: p.u impedance of motor load M1 :\n    Z_M1(pu) = ");disp(Z_M1_pu);

printf(" \n f: p.u impedance of motor load M1 :\n    Z_M2(pu) = ");disp(Z_M2_pu);

printf(" \n g: p.u impedance of motor load M1 :\n    Z_M3(pu) = ");disp(Z_M3_pu);

printf(" \n h: See Fig.14-25b.");
