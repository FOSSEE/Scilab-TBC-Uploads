//Problem 42.01: Determine the cut-off frequency and the nominal impedance of each of the low-pass filter sections shown in Figure 42.19.

//initializing the variables:
L1 = 2*100E-3; // in Henry
C1 = 0.2E-6; // in Fareads
L2 = 0.4; // in Henry
C2 = 2*200E-12; // in Fareads

//calculation:
//cut-off frequency
fc1 = 1/(%pi*(L1*C1)^0.5)
//nominal impedance
R01 = (L1/C1)^0.5
//cut-off frequency
fc2 = 1/(%pi*(L2*C2)^0.5)
//nominal impedance
R02 = (L2/C2)^0.5

printf("\n\n Result \n\n")
printf("\n cut-off frequency %.0f Hz and the nominal impedance is %.0f ohm ",fc1, R01)
printf("\n cut-off frequency %.0f Hz and the nominal impedance is %.0f ohm ",fc2, R02)