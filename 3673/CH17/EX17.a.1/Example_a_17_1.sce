//Example_a_17_1 page no:863
clc;
fc=2*10^3;
K=400;
L=K/(%pi*fc);
L=L*1000;
C=1/(K*%pi*fc);
C=C*10^6;
disp(L,"the inductance is (in mH)");
disp(C,"the capacitance is (in microFarad)");
