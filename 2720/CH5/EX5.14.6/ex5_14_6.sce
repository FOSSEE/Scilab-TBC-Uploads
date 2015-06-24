//Exa 5.14.6
clc;
clear;
close;
// Given data
bita= 100;
V_BEsat= 0.8;// in V
V_CEsat= 0.2;// in V
V_BEact= 0.7;// in V
V_CC = 10;// in V
V_BB=5;// in V
R_E = 2;// in kΩ
R_C = 3;// in kΩ
R_B= 50;// in kΩ
// Applying KVL to collector loop
// V_CC= I_Csat*R_C +V_CEsat +I_E*R_E and I_E= I_Csat+I_B, So
//I_B= ((V_CC-V_CEsat)-(R_C+R_E)*I_Csat)/R_E;           (i)
// Applying KVL to base loop
// V_BB-I_B*R_B -V_BEsat-I_E*R_E =0 and I_E= I_Csat+I_B, So
//V_BB-V_BEsat= R_E*I_Csat + (R_B+R_E)*I_B              (ii)
// From eq (i) and (ii)
I_B = ((V_BB-V_BEsat)*5- (V_CC-V_CEsat)*2) / ((R_B+R_E)*5 - R_E*2) ;// in mA
I_Csat= ((V_CC-V_CEsat)-R_E*I_B)/(R_C+R_E);// in mA
I_Bmin= I_Csat/bita;// in mA
if I_B<I_Bmin then
    disp("Since the value of I_B ("+string(I_B*10^3)+"µA) is less than the value of I_Bmin ("+string(I_Bmin*10^3)+"µA)");
    disp("So the transistor is not in the saturation region. But it is conducting hence it can not be in cutoff.")
    disp("Therefore the transistor is in the active region")
end
