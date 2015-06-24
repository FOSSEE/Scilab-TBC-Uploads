// Exa 5.8
clc;
clear;
close;
format('v',6)
// Given data
I_C = 10;// in mA
I_C = I_C * 10^-3;// in A
V_CE = 10;// in V
h_ie = 500;// in ohm
h_oe = 4*10^-5;// in A/V
h_fe = 100;// unit less
h_re = 10^-4;// unit less
V_T = 26;// in mV
V_T = V_T * 10^-3;// in V
g_m = I_C/V_T;// in S
g_m= g_m*10^3;// in mS
disp(g_m,"The value of g_m in mS is");
g_m= g_m*10^-3;// in S
r_b_desh_e = h_fe/g_m;// in ohm
disp(r_b_desh_e,"The value of r_b''e in ohm is");
r_b_desh_b = h_ie - r_b_desh_e;// in ohm
disp(r_b_desh_b,"The value of r_b''b in ohm is");
r_b_desh_c = r_b_desh_e/h_re;// in ohm
r_b_desh_c= r_b_desh_c *10^-6;// in M ohm
disp(r_b_desh_c,"The value of r_b''c in Mohm is");
r_b_desh_c= r_b_desh_c *10^6;// in ohm
g_b_desh_c = 1/r_b_desh_c;// unit less
g_ce = h_oe - (1+h_fe)*g_b_desh_c;// in S
format('v',11)
disp(g_ce,"The value of g_ce in S is");
Cob = 3;// in pF 
Cbdasc = Cob;// in pF  
disp(Cbdasc,"The value of C_b''c in pF is : ")
format('v',6)
fT = 50;// in MHz
fT = fT * 10^6;// in Hz
Cbdase = (g_m/(2*%pi*fT))-Cbdasc * 10^-12;// in F
Cbdase= Cbdase *10^12;// in pF
disp(Cbdase,"The value of C_b''e in pF is");
