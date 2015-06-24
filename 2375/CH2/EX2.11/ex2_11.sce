// Exa 2.11
clc;
clear;
close;
format('v',6)
// Given data
V_CEsat = 0.2;// in V
V_CC = 10;// in V
V_BEsat = 0.8;// in V
// Part (i) To obtain minimum value of R_C
R_B = 220;// in k ohm
R_B = R_B * 10^3;// in ohm
Beta = 100;
// Applying KVL to collector circuit, we get
// V_CC = V_CEsat + I_Esat*R_C  or              (i)
I_CsatR_C= V_CC-V_CEsat;// in V
// Applying KVL to input loop
// V_CC= V_BEsat+I_B*R_B  or                    (ii)
I_B= (V_CC-V_BEsat)/R_B;// in A
// Just at saturation I_B= I_C/Beta or
I_C= Beta*I_B;// in A
R_Cmin= I_CsatR_C/I_C;// in ohm
R_Cmin= R_Cmin*10^-3;// in k ohm
disp(R_Cmin,"The minimum value of R_C to produce saturation of Si transistor in kΩ is : ")

// Part (ii) To obtain maximum value of R_B
R_C = 1.2;// in k ohm
R_C = R_C * 10^3;// in ohm
I_Csat= I_CsatR_C/R_C;// in A
// Just at saturation 
I_B= I_Csat/Beta;// in A
// Now on substituting the new value of I_B in eq (ii)
R_Bmax= (V_CC-V_BEsat)/I_B;// in ohm
R_Bmax= R_Bmax*10^-3;// in k ohm
disp(R_Bmax,"The largest value of R_B that will saturate the transistor in kΩ is : ")
