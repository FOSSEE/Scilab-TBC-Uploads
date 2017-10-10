//Example_a_17_10 page no:869
clc;
Ro=600;
atten_const=10;
f=600;
D=10;
N=10^(D/10);
L1=(Ro*sqrt(N-1))/(2*%pi*f);
C1=sqrt(N-1)/(2*%pi*Ro*f);
C1=C1*10^6;
disp(L1,"the inductance is (in H)");
disp(C1,"the capacitance is (in microFarad)");
