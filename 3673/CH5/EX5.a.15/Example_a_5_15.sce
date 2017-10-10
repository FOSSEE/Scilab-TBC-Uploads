//Example_a_5_15 page no:215
clc;
Vm=100;
Im=20;
theta=110-50;
omega=2000;
R=(Vm/Im)/(sqrt(1+tand(theta)^2));
C=1/(omega*tand(theta)*R);
C=C*10^6;//converting to microFarad
disp(R,"the resistance in the circuit is (in ohm)");
disp(C,"the capacitance in the circuit is (in microFarad)");
//tan value is rounded off in text book so capacitance value varies slightly
