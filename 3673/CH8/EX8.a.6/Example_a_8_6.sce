//Example_a_8_6 page no:328
clc;
V=100;
I=0.7;
Vc=200;
omega=2*%pi*200;
C=I/(omega*200);
C=C*10^6;//converting to microFarad
Xc=200/0.7;
Xl=Xc;
L=Xl/(2*%pi*200);
R=(V/I)-50;
disp(C,"the capacitance is (in microFarad)");
disp(L,"the inductanc is (in H)");
disp(R,"the resistance is (in ohm)");
