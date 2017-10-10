//Example_a_16_7 page no:785
clc;
h11=1*10^3;
h12=0.003;
h21=100;
h22=50*10^-6;
R=500;
Vs=10*10^-3;
I1=10*10^-3/954.54;
V1=Vs-(I1*R);
V2=(V1-(h11*I1))/(h12);
disp(V2,"the value of V2 is (in V)");
delta_h=(h11*h22)-(h21*h12);
Z11=delta_h/h22;
Z12=h12/h22;
Z21=-h21/h22;
Z22=1/h22;
disp("the Z parameters of the network are");
disp(Z11,"the value of Z11 is (in ohm)");
disp(Z12,"the value of Z12 is (in ohm)");
disp(Z21,"the value of Z21 is (in ohm)");
disp(Z22,"the value of Z22 is (in ohm)");
//V2 varies slightlly with text book hence I1 and V1 values are rounded off in text book which produce approximate result
