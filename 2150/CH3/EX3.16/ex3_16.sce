// Exa 3.16
clc;
clear;
close;
// Given data
V_in = 20;// in V
R_S = 220;// in ohm
V_Z = 10;// in V
P_Z = 400;// in mW
// Part (I)
R_L = 200;// in ohm
disp("Part (I) For R_L= 200 Ω")
V_L = V_Z;// in V
disp(V_L,"Load voltage in V is");
I_L = V_L/R_L;// in A
disp(I_L,"Load current in A is");
I_R = (V_in-V_Z)/R_S;// in A
disp(I_R,"The current through resistor in A is");
I_Z = I_R-I_L;// in A
disp(I_Z,"The value of I_Z in A is");
// Part (II)
R_L = 50;// in ohm
disp("Part (II) For R_L= 50 Ω")
V_L = V_Z;//
disp(V_L,"Load voltage in V is");
I_L = V_L/R_L;// in A
disp(I_L,"Load current in A is");
I_R = (V_in-V_Z)/R_S;// in A
disp(I_R,"The current through resistor in A is");
I_Z = I_R-I_L;// in A
disp(I_Z,"Zener current in A is");
disp("For both values of R_L, the current I_R is less than I_L and I_Z is negative. It shows that given circuit can not work successfully as a voltage regulator")
