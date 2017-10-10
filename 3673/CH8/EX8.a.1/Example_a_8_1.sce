//Example_a_8_1 page no:325
clc;
R=10;
L=0.1;
C=50*10^-6;
V=100;
omega=1/sqrt(L*C);
fr=omega/(2*%pi);
I=V/R;
Vl=I*omega*L;
Q=omega*L/R;
disp(Vl,"the voltage drop across the inductor is (in V)");
disp(Q,"the quality factor is");
