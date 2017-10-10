syms s t V q L C1 R K1 x1 x2 phi1 phi2 L1 R1 R2 L1 L2

//F=K1*(x1-x2)
//0=K1*(X2-X1) + M2*s^2*X2 + K2*X2 + B2*s*X2

//F-V anolagy

x1=q1;
x2=q2;
K1=1/C1;
B=R;
disp("V = 1/C1 * (q1-q2)")
disp("0=1/C1*(q2-q1) + L2*s^2*q2 + q2/C2 + R2*s*q2")

//F-I ANOLOGY

M=C;
B=1/R;
K=1/L;

disp("I=1/L1*(phi1-phi2)")
disp("0=1/L1*(phi2-phi1) + C2*s^2*phi2 + 1/R2*s*phi2 + 1/L*phi2")

