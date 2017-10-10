//Example_a_8_9 page no:331
clc;
V=20;
omega_r=500;
C=20*10^-6;
Xl=1/(omega_r^2*C);
C=30*10^-6;
R=((omega_r*Xl)-(1/(omega_r*C)));
Q=(omega_r*Xl)/R;
disp(Xl,"the value of inductance is (in H)");
disp(R,"the value of resistance is (in ohm)");
disp(Q,"the quality factor is ");
