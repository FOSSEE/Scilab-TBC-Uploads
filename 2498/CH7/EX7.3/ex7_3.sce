// Exa 7.3
clc;
clear;
close;
format('v',4)
// Given data
I_D = 1.5;// in mA
I_D = I_D*10^-3;// in A
V_DS = 10;// in V
I_DSS = 5;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -2;// in V
V_DD = 20;// in V
// I_D = I_DSS*((1-(V_GS/V_P))^2);
// ((V_GS/2)+1) = sqrt(I_D/I_DSS);
V_GS = 2*( (sqrt(I_D/I_DSS))-1 );// in V
V_G = 0;// in V
// V_GS = V_G-V_S;
V_S = -V_GS;// in V
R_S = V_S/I_D;// in ohm
R_S= R_S*10^-3;// in k ohm
disp(R_S,"The value of R_S in k ohm is");
R_S= R_S*10^3;// in ohm
// V_DD = (I_D*R_D) + V_DS + (I_D*R_S);
R_D = (V_DD-V_DS-(I_D*R_S))/I_D;// in ohm
R_D = round(R_D * 10^-3);// in k ohm
disp(R_D,"The value of R_D in k ohm is");
