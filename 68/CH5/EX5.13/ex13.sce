// Example 5.13 : Design of bias network of the amplifier
I_E=1*10^-3; // (A)
V_CC=12; // (V)
B=100; // beta value
V_B=4; // (V)
V_BE=0.7; // (V)
R1=80; // (ohm)
R2=40; // (ohm)
V_C=8; // (V)
V_E=V_B-V_BE;
disp(V_E,"Emitter voltage (V)")
R_E=V_E/I_E;
disp(R_E,"Emitter resistance (ohm)")
I_E=(V_B-V_BE)/(R_E+(R1*R2/(R1+R2))/(B+1));
disp(I_E,"more accurate value for I_E (A) for R1=80 ohm and R2=40 ohm")
R1=8; // (ohm)
R2=4; // (ohm)
I_E=(V_B-V_BE)/(R_E+(R1*R2/(R1+R2))/(B+1));
disp(I_E,"more accurate value for I_E (A) for R1=8 ohm and R2=4 ohm")
R_C=(V_CC-V_C)/I_E; // I_E=I_C
disp(R_C,"Collector resistor (ohm)")