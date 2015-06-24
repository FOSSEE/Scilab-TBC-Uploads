// Example 5.19 : To select values of capacitance required
R_B=100000; // (ohm)
r_pi=2500; // (ohm)
R_C=8000; // (ohm)
R_L=5000; // (ohm)
R_sig=5000; // (ohm)
B=100; // beta value
g_m=0.04; // (A/V)
r_pi=2500; //(ohm)
f_L=100; // (Hz)
r_e=25; // (ohm)
R_C1=R_B*r_pi/(R_B+r_pi)+R_sig; // Resistance seen by C_C1 
R_E=r_e+R_B*R_sig/((R_B+R_sig)*(B+1)); // Resistance seen by C_E
R_C2=R_C+R_L;// Resistance seen by C_C2
w_L=2*%pi*f_L;
C_E=1/(R_E*0.8*w_L); //C_E is to contribute only 80% of the value of w_L
disp(C_E,"C_E (F)") 
C_C1=1/(R_C1*0.1*w_L); //C_C1 is to contribute only 10% of the value of f_L
disp(C_C1,"C_C1 (F)")
C_C2=1/(R_C2*0.1*w_L); //C_C2 should contribute only 10% of the value of f_L
disp(C_C2,"C_C2 (F)")