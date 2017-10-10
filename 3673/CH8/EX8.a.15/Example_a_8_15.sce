//Example_a_8_15 page no:335
clc;
V=220;
f=50;
Vr=550;
Ir=1;
R=V/Ir;
C=1/(Vr*2*%pi*f);
C=C*10^6;
L=1/((C*10^-6)*(100*%pi)^2);
disp(R,"the resistance is (in ohm)");
disp(L,"the inducatance is (in H)");
disp(C,"the capacitance is (in microFarad)");
