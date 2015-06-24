// Example 6.4 : Design of the circuit with output current =100uA

V_DD=3; // (V)
I_REF=100*10^-6; // (A)
I_D1=100*10^-6; // (A)
L=1*10^-6; // (m)
W=10*10^-6; // (m)
V_t=0.7; // (V)
k_n=200*10^-6; // k_n=k'_n (A/V^2)
V_A=20; // V_A=V'_A (V)
V_OV=sqrt(I_D1*2*L/(k_n*W));
V_GS=V_t+V_OV;
R=(V_DD-V_GS)/I_REF;
V_Omin=V_OV;
disp(V_Omin,"V_min (V)")
r_o2=V_A/I_REF;
disp(r_o2,"r_o2 (ohm)")
V_O=V_GS;
deltaV_O=1; // Change in V_O (V)
deltaI_O=deltaV_O/r_o2; // Corresponding change in I_O (A)
disp(deltaI_O,"The correspondng change in I_O (A)")