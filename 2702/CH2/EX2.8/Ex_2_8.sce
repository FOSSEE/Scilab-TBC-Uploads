// Exa 2.8
clc;
clear;
close;
// Given data 
KnWbyL= 1;// in mA/V^2
KnWbyL=KnWbyL*10^-3;// in A/V^2
Vt= 1;// in V
V_DD= 10;// in V
R_D= 6;// in kΩ
R_D= R_D*10^3;// in Ω
R_S= 6;// in kΩ
R_S= R_S*10^3;// in Ω
R_G1= 10;// in MΩ
R_G1= R_G1*10^6;// in Ω
R_G2= 10;// in MΩ
R_G2= R_G2*10^6;// in Ω
V_G= V_DD*R_G2/(R_G1+R_G2);// in V
// V_S= R_S*I_D
// V_GS= V_G-V_S= V_G-R_S*I_D
// Formula I_D= K'nW/2*L*(V_GS-Vt)^2, Putting the value of V_GS, We get
// 18*I_D^2 -25*I_D +8= 0
// I_D= 0.89 mA or I_D= 0.5
I_D= 0.5;// in mA
I_D=I_D*10^-3;// in A
V_S= R_S*I_D;// in V
V_GS= V_G-V_S;// in V
V_D= V_DD-I_D*R_D;// in V
disp(I_D*10^3,"The value of I_D in mA is : ")
disp(V_S,"The value of V_S in volt is : ")
disp(V_GS,"The value of V_GS in volt is : ")
disp(V_D,"The value of V_D in volt is : ")
disp("Since V_D > V_G - Vt , the transistor is operating in saturation , as initially assumed")


