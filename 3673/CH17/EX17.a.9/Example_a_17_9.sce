//Example_a_17_9 page no:869
clc;
Ro=600;
omega=800;
atten_const=12;
N=10^(atten_const/10);
L1=(Ro*sqrt(N-1))/(2*%pi*omega);
C1=L1/Ro^2;
C1=C1*10^6;
disp(L1,"the inductance is (in H)");
disp(C1,"the capacitance is (in microFarad)");
