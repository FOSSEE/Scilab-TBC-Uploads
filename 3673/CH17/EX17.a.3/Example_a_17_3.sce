//Example_a_17_3 page no:865
clc;
f1=1000;
f2=5*10^3;
k=500;
f0=sqrt(f1*f2);
B_omega=f2-f1;
//calculating T-section elements
L1=k*(f2-f1)/(%pi*f1*f2);
C1=1/(4*%pi*k*(f2-f1));
//calculating pi-section elements
L2=k/(4*%pi*(f2-f1));
C2=(f2-f1)/(%pi*k*(f2*f1));
disp("T-Section filter is given by");
disp(L2*1000,"the inductance is (in mH)");
disp(C2*10^6,"the capacitance is (in microFarad)");
disp("pi-Section filter is given by");
disp(2*L2*1000,"the inductance is (in mH)");
disp(C2*10^6/2,"the capacitance is (in microFarad)");
