// Exa 5.2
clc;
clear;
close;
format('v',6)
// Given data
R_Ph = 16;// in ohm
X_L = 12;// in ohm
V_L = 400;// in V
disp(V_L,"The line voltage in V is");
f = 50;// in Hz
V_Ph = V_L/sqrt(3);// in V
disp(V_Ph,"The phase voltage in V is");
Z_Ph = R_Ph + %i*X_L;// in ohm
I_Ph= V_Ph/Z_Ph;// in A
I_L= I_Ph;// in A
phi= atand(imag(I_L),real(I_L));
cos_phi= R_Ph/abs(Z_Ph);
disp(abs(I_L),"The line current in A is : ")
disp(abs(I_Ph),"The line current in A is : ")
disp("Power factor is : "+string(cos_phi)+" lagging")
P= sqrt(3)*V_L*abs(I_L)*cos_phi;// in W
disp(P,"The power absorbed in W is : ")

