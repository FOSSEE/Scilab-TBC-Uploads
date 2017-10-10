//Example 1_4 page no:22
clc;
I3=2;
I6=6;
V2=12;
V3=6;
V=20
I4=I3+I6;
V4=4*I4;
V=V4-V2;
Vs=V4-V;
Vin=-(30-V-V3);
P4=V4*I6;//dependent power source
disp(Vs,"the voltage Vs is (in V)");
disp(Vin,"the voltage Vin is (in V)");
disp(P4,"the power provided by dependent source is (in W)");
