// Example 14.3 Redesign the output stage of Example 14.2
V_T=25*10^-3; // (V)
I_S=10^-14; // (A)
I_Q=2*10^-3; // Required quiescent current (A)
// We select I_BIAS=3mA which is divided between I_R and I_C1
// Thus we select I_R=0.5mA and I_C1=2.5mA
V_BB=2*V_T*log(I_Q/10^-13);
disp(V_BB,"V_BB (V)")
I_R=0.5*10^-3;
R1plusR2=V_BB/I_R; // R1plusR2 = R_1+R_2
I_C1=2.5*10^-3;
V_BE1=V_T*log(I_C1/I_S);
disp(V_BE1,"V_BE1 (V)")
R_1=V_BE1/I_R;
disp(R_1,"R_1 (ohm)")
R_2=R1plusR2-R_1;
disp(R_2,"R_2 (ohm)")