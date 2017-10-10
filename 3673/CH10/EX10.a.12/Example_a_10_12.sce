//Example_a_10_12 page no:473
clc;
R1=0.01;
R2=0.1;
Rs=0.1;
V=2;
L1=2*10^-6;
L2=25*10^-6;
omega_r=10^4;
Mc=sqrt(R2*(R1+R2))/omega_r;
C2=1/(omega_r^2*L2);
Vo=V/(2*omega_r^2*C2*Mc);
disp(Vo,"the maximum output voltage at resonance is (in V)");
