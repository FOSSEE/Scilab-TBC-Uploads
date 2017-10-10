close();
clear;
clc;
//from solved example 13.1
phic = 0.61*10^(-3); //Wb
phi1 = 0.01*10^(-3); //Wb
I = 10.77; //A
N = 100; //A
//total self inductance 'L'
L = N*phic/I;
mprintf("Total self-inductance, L = %0.2f mH\n\n",L*1000);
//leakage inductance of coil 'L1'
L1 = N*phi1/I;
mprintf("Leakage inductance of coil, L1 = %0.3f mH",L1*1000);