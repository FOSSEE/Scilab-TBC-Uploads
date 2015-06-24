// Exa 4.12
clc;
clear;
close;
format('v',9)
// GIven data
R = 100;// in ohm
L = 100;// in µH
L = L * 10^-6;// in H
C = 100;// in  pF
C = C * 10^-12;// in F
V = 10;// in V
// The resonant frequency 
f_r = 1/(2*%pi*sqrt(L*C));// in Hz 
disp(f_r,"The resonant frequency in Hz is");
// current at resonance 
Ir = V/R;// in A
disp(Ir,"The current at resonance in A is");
X_L = 2*%pi*f_r*L;// in ohm 
// voltage across L at resonance 
V_L = Ir*X_L;// in V
disp(V_L,"The voltage across L at resonance in V is");
X_C = X_L;// in ohm
// voltage across C at resonance 
V_C = Ir*X_C;// in V
disp(V_C,"The voltage across C at resonance in V is");
Q= 1/R*sqrt(L/C);
disp(Q,"The Q-factor is : ")
