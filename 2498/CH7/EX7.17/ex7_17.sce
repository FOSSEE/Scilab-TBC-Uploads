// Exa 7.17
clc;
clear;
close;
format('v',6)
// Given data
V_DD = 30;// in V
R_D = 12;// in k ohm
R_S= 1.5;// in k ohm
V_GS = -0.47;// in V
V_P = -2.4;// in V
I_DSS = 3;// in mA
I_D= poly(0,'I_D');
I_D= I_D-I_DSS*(1-(V_GS/V_P)*I_D)^2;
// On solving equation by polynomial method, quiescent drain current 
I_D= roots(I_D)
I_D= I_D(2);// in mA
disp(I_D,"The quiescent drain current in mA is : ")
V_D= round(V_DD-I_D*R_D);//in V
V_S= -V_GS*R_S;// in V
// The quiescent drain to source voltage 
V_DS= ceil(V_D-V_S);// in V
disp(V_DS,"The quiescent drain to source voltage in volts is : ")
// gm= gmo*(1-V_GS/V_P)= -2*I_DSS/V_P*(1-V_GS/V_P)
 gm=-2*I_DSS/V_P*(1+V_S/V_P);//in mA/V
 // The small signal voltage gain 
 Av= -gm*R_D;
 disp(Av,"The small signal voltage gain is : ")
