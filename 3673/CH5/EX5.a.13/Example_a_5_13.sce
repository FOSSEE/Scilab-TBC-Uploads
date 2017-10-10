//Example_a_5_13 page no:214
clc;
Vm=15;
Im=8.5;
omega=200;
R=Vm/(Im*sqrt(2));
C=1/(omega*R);
disp(R,"the resistance in the circuit is (in ohm)");
disp(C,"the capacitance in the circuit is (in F)");
