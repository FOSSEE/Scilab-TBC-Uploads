//Example_a_3_22 page no:150
clc;
V=4;
R1=2;
R2=3;
Vx=V/0.8;
Isc=V/(R1+R2);
Rth=Vx/Isc;
disp(Vx,"the thevenin voltage is (in V)");
disp(Rth,"the thevenin resistance is (in ohm)");
