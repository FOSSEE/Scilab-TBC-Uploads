// Exa 9.25
clc;
clear;
close;
// Given data
R_S1 = 100*10^-3;// in k ohm
R_S2 = 100*10^-3;// in k ohm
R_S = R_S1+R_S2;// in k ohm
R_D= 1.8;// in k ohm
I_DSS= 12;// in mA
Vp= -3.5;// in V
V_DD= 22;// in V
rd= 25;// in k ohm
R_L= 47;// in k ohm
I_D= poly(0,'I_D');
V_GS= -I_D*R_S;// in V
I_D= I_D-I_DSS*(1-V_GS/Vp)^2;// in mA
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
disp(I_D,"The value of I_D in mA is : ")
V_GS= -I_D*R_S;// in V
disp(V_GS,"The value of V_GS in volts is : ")
V_DS= V_DD-I_D*(R_D+R_S);// in V
disp(V_DS,"The value of V_DS in volts is : ")
gmo= -2*I_DSS/Vp;// in mS
gm= gmo*(1-V_GS/Vp);// in mS
miu= gm*rd;
Av= -miu*R_D*R_L/(R_D+R_L)/(rd+R_D*R_L/(R_D+R_L)+(1+miu)*R_S1);
disp(Av,"The value of Av is : ")
