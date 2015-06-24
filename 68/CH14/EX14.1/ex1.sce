// Example 14.1 To design a Class B Output Amplifier

P_L=20; // Average power (W) 
R_L=8; // Load resistance (ohm)
V_o=sqrt(2*P_L*R_L); 
disp(V_o,"Supply voltage required (V)")
V_CC=23; // We select this voltage (V)
I_o=V_o/R_L;
disp(I_o,"Peak current drawn from each supply (A)")
P_Sav=V_CC*I_o/%pi; // P_S+ = P_S- = P_Sav
P_S=P_Sav+P_Sav; // Total supply power
disp(P_S,"The total power supply (W)")
n=P_L/P_S; // n is power conversion efficiency
disp(n*100,"Power conversion efficiency %")
P_DPmax=V_CC^2/(%pi^2*R_L);
P_DNmax=P_DPmax;
disp(P_DPmax,"Maximun power dissipated in each transistor (W)")