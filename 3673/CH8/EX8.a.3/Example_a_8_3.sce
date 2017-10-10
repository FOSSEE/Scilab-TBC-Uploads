//Example_a_8_3 page no:326
clc;
Vmax=10;
Vrms=Vmax/sqrt(2);
Vc=500;
Q=Vc/Vrms;
BW=400;
Z=100;
R=Z;
omega_r=Q*BW;
fr=omega_r/(2*%pi);
L=R/BW;
C=1/((2*%pi*fr)^2*L);
C=C*10^9;
disp(fr,"the resonant frequency is (in Hz)");
disp(L,"the inductance of the circuit is (in H)");
disp(C,"the capacitance of the circuit is (in nF)");
//resonant frequency varies slightly with text book hence in text book value of Q is rounded off
