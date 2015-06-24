//Problem 42.05: Determine for each of the high-pass filter sections shown in Figure 42.27 (i) the cut-off frequency, and (ii) the nominal impedance.

//initializing the variables:
L1 = 100E-3; // in Henry
C1 = 0.2E-6/2; // in Fareads
L2 = 200E-6/2; // in Henry
C2 = 4000E-12; // in Fareads

//calculation:
//cut-off frequency
fc1 = 1/(4*%pi*(L1*C1)^0.5)
//nominal impedance
R01 = (L1/C1)^0.5
//cut-off frequency
fc2 = 1/(4*%pi*(L2*C2)^0.5)
//nominal impedance
R02 = (L2/C2)^0.5

printf("\n\n Result \n\n")
printf("\n cut-off frequency %.0f Hz and the nominal impedance is %.0f ohm",fc1, R01)
printf("\n cut-off frequency %.0f Hz and the nominal impedance is %.0f ohm ",fc2, R02)