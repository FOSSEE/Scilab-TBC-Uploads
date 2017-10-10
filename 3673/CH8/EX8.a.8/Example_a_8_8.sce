//Example_a_8_8 page no:330
clc;
V=10;
fr=100;
C=10*10^-6;
omega=900;
L=1/(C*(2*%pi*fr)^2);
C=12*10^-6;
R=(omega*L)-(1/(omega*C));
Q=omega*L/R;
I=V/R;
disp(L,"the inductance is (in H)");
disp(R,"the resistance is (in ohm)");
disp(Q,"the quality factor is ");
disp(I,"the maximum current in the circuit is (in A)");
//resistance value varies in the textbook due to inductance value is rounded off in text book
