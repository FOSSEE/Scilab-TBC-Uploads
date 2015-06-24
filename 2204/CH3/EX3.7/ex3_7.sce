// Exa 3.7
clc;
clear;
close;
// Given data
A = 2*10^5;
R_i = 2;//in  M ohm
R_i = 2*10^6;// in ohm
R_o = 75;//in ohm
f_o = 5;// in Hz
V_CC = 15;// in V
V_EE = -15;// in V
R1 = 1;// in k ohm
R1 = R1 * 10^3;// in ohm
R_F = 10;// in k ohm
R_F = R_F * 10^3;// in ohm
OVS= 13;// output voltage swing in V in ±
B = R1/(R1+R_F);
A_B = A*B;
A_B1 = 1+(A*B);
A_F = (1+(R_F/R1));
disp("Part (i) For non-inverting amplifier")
disp(A_F,"The value of A_F is");
R_iF = R_i * (A_B1);// in ohm
disp(R_iF*10^-9,"The value of R_iF in GΩis");
R_OF = R_o/(A_B1);// in ohm
disp(R_OF,"The value of R_OF in ohm is");
f_F = f_o*A_B1;// in Hz
f_F =f_F * 10^-3;// in kHz
disp(f_F,"The value of f_F in kHz is");
V_ooT= OVS/(1+A*B);// in V
disp("The value of VooT is ±"+string(V_ooT)+" V or ±"+string(V_ooT*10^3)+" mV")

disp("Part (ii) For inverting amplifier")
R_F = 4.7;// in k ohm
R_F = R_F* 10^3;// in ohm
R_1 = 470;// in ohm
A_F = -(R_F)/R_1;
disp(A_F,"The value of A_F is");
R_iF = R_1// in ohm
disp(R_iF,"The value of R_iF in Ω is");
R_OF = R_o/(A_B1);// in ohm
disp(R_OF,"The value of R_OF in Ω is");
f_F = f_o*A_B1;// in Hz
f_F =f_F * 10^-3;// in kHz
disp(f_F,"The value of f_F in kHz is");
V_ooT = OVS/A_B1;// in mV
disp("The value of VooT is ±"+string(V_ooT)+" V or ±"+string(V_ooT*10^3)+" mV")
