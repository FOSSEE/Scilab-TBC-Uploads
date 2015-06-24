// Example 7.1 Analysis of differential amplifier
// Consider the differential amplifier
B=100; // beta value

// 7.1a
V_T=0.025; // (V)
I_E=0.0005; // (A)
R_E=150; // (ohm)
r_e1=V_T/I_E;  // emitter resistance (ohm)
r_e2=r_e1; // emitter resistance (ohm)
r_e=r_e1;
R_id=2*(B+1)*(r_e+R_E);
disp(R_id,"The input differential resistance R_id (ohm)")

// 7.1b
R_id=40000; // (ohm)
R_sig=5000; // (ohm)
R_C=10000; // (ohm)
R_E=150; // (ohm)
A_v=R_id/(R_id+R_sig); // A_v= v_o/v_sig (V/V)
A_V=2*R_C/(2*(r_e+R_E)); // A_V= v_o/v_id (V/v)
A_d=A_v*A_V; // A_d=v_o/v_sig (V/V)
disp(A_d,"Overall differential voltage gain (V/V)") 

// 7.1c
R_EE=200000; // (ohm)
deltaR_C=0.02*R_C; // in the worst case
A_cm=R_C*deltaR_C/(2*R_EE*R_C)
disp(A_cm,"Worst case common mode gain (V/V)")

// 7.1d
CMRR=20*log10(A_d/A_cm)
disp(CMRR,"CMRR in dB")

// 7.1e
r_o=200000; //(ohm)
R_icm=(B+1)*(R_EE*r_o/2)/(R_EE+r_o/2);
disp(R_icm,"Input common mode resistance (ohm)")