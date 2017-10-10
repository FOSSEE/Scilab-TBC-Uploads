//Example_a_17_11 page no:870
clc;
R1=2000;
L1=30*10^-3;
R2=300;
Ro=sqrt(R1*R2);
C1=L1/Ro^2;
C1=C1*10^6;
disp(Ro,"the value of resistance Ro is (in ohm)");
disp(C1,"the value of capacitance C1 is (in microFarad)");
