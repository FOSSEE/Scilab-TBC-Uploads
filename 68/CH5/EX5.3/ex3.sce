// Example 5.3 :Determine R_B 
// transistor is specified to have B value in the range of 50 to 150
V_C=0.2; // V_C=V_CEsat
V_CC=10; // (V)
R_C=10^3; // (ohm)
V_BB=5; // (V)
V_BE=0.7; // (V)
bmin=50; // range of bete is 50 to 150
I_Csat=(V_CC-V_C)/R_C;
I_BEOS=I_Csat/bmin; // I_B(EOS)=I_BEOS
I_B=10*I_BEOS; // base current for an overdrive factor 10
R_B=(V_BB-V_BE)/I_B;
disp(R_B,"Value of R_B (ohm)")