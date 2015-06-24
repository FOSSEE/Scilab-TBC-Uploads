//Example 3.4: To determine I_D and V_D
V_DD=5; // (V)
R=1000; // (ohm)
I_1=1*10^-3; // (A)
V_D=0.7; // (V)
V_1=V_D;
I_D=(V_DD-V_D)/R;
I_2=I_D;
V_2=V_1+0.1*log10(I_2/I_1);
I_D=(V_DD-V_2)/R;
disp(I_D,"The diode current (A)")
V_D=V_2+0.1*log10(I_D/I_2)
disp(V_D,"The diode volage (V)")