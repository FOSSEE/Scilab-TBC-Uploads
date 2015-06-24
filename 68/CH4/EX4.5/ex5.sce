// Example 4.5: To determine all node voltages and currents through all branches
V_t=1; // (V)
K=1*10^-3; // K=k'_n(W/L)
V_DD=10; // (V)
R_G1=10*10^6; // (ohm)
R_G2=10*10^6; // (ohm)
R_D=6*10^3; // (ohm)
R_S=6*10^3; // (ohm)
p=poly([8 -25 18],'I_D', 'coeff');
I_D=roots(p);
// I_D=0.89mA will result in transistor cut off hence we take the other root of the equation
V_G=V_DD*R_G2/(R_G2+R_G1);
I_D=I_D(1)*10^-3;
disp(I_D,"I_D (A)")
V_S=I_D*R_S;
disp(V_S,"V_S (V)")
V_GS=V_G-V_S;
disp(V_GS,"V_GS (V)")
V_D=V_DD-R_D*I_D;
disp(V_D,"V_D (V)")
// V_D>V_G-V_t the transistor is operating in saturation as initially assumed