//Example_a_10_11 page no:472
clc;
omega_r=1000;
C1=1*10^-6;
C2=2*10^-6;
R1=5;
R2=3;
L1=1/(omega_r^2*C1);
L2=1/(omega_r^2*C2);
M=sqrt(R1*R2)/omega_r;
M=M*1000;//converting to milli Henry
disp(L1,"the inductance L1 is (in H)");
disp(L2,"the inductance L2 is (in H)");
disp(M,"the optimum value of mutual inductance is (in mH)");
