// Exa 9.11
clc;
clear;
close;
// Given data
k= 0.1;// in mA/V^2
V_T= 1;// in V
R2= 87*10^3;// in Ω
R1= 110*10^3;// in Ω
R_S=2;// in kΩ
R_D=2;// in kΩ
//R_D=3*10^3;// in Ω
V_DD= 6;// in V
V_SS= 6;// in V
V_G= (V_DD+V_SS)*R2/(R1+R2);// in V
// V_S= I_D*R_S-V_SS
// V_GS= V_G-V_S= V_G+V_SS-(I_D*R_S)
// I_D= k*[V_GS-V_T]^2 = k*[(V_G+V_SS-V_T)-(I_D*R_S)]^2
//(I_D*R_S)^2-  I_D*(2*R_S*(V_G+V_SS-V_T)+1/k)   +(V_G+V_SS-V_T)^2
A= R_S^2;// assumed
B= -(2*R_S*(V_G+V_SS-V_T)+1/k);// assumed
C= (V_G+V_SS-V_T)^2;// assumed
I_D= [A B C]
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
disp(I_D,"The value of I_D in mA is : ")
// Applying KVL to drain source loop, V_DD+V_SS= I_D*R_D+V_DS+I_D*R_S
V_DS=V_DD+V_SS-I_D*R_D-I_D*R_S;// in V
disp(V_DS,"The value of V_DS in volts is : ")


