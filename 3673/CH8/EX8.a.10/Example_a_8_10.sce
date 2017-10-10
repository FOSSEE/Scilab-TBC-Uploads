//Example_a_8_10 page no:331
clc;
L=0.1;
Q=5;
omega_r=500;
R=omega_r*L/Q;
C=1/(L*omega_r^2);
C=C*10^6;
disp(R,"the coil resistance at resonant frequency is (in ohm)");
disp(C,"the capacitance is (in microFarad)");
