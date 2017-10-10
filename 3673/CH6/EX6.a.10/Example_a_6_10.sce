//Example_a_6_10 page no:240
clc;
V=70.7;
I=600/(100*cosd(45));
X1mag=V/I;
X1ang=90-0;
disp(X1mag,"the magnitude of inductance is (in ohm)");
disp(X1ang,"the angle of inductance is (in degree)");
Ir1=I/2;
disp(Ir1,"the current through parallel branch R1 is (in A)");
R1=V/Ir1;
disp(R1,"the resistance R1 is (in ohm)");
Ir2=I/2;
disp(Ir2,"the current through parallel branch R2 is (in A)");
R2=V/Ir2;
disp(R2,"the resistance R2 is (in ohm)");
