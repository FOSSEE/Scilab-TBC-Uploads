// Exa 4.2
format('v',5);
clc;
clear;
close;
// Given data
V_DD= 1.5;// in V
V_SS= V_DD;// in V
KnWL= 4;// in mA/V^2
KnWL=KnWL*10^-3;// in A/V^2
Vt= 0.5;// in V
I=0.4;// in mA
I=I*10^-3;//in A
R_D= 2.5;// in kΩ
R_D= R_D*10^3;// in Ω

// Part (a)
disp("Part (a)")
V_OV= sqrt(I/KnWL);// in V
V_GS= V_OV+Vt;// in V
disp(V_OV,"Value of V_OV in volt is : ")
disp(V_GS,"Value of V_GS in volt is : ")

// Part (b)
disp("Part (b)")
V_CM= 0;// in volt
V_S= -V_GS;// in volt
disp(V_S,"Value of V_S in volt is :")
I=0.4;// in mA
i_D1= I/2;// in mA
disp(i_D1,"Value of i_D1 in mA is :")
i_D1=i_D1*10^-3;// in A
V_D1= V_DD-i_D1*R_D;// in V
V_D2=V_D1;// in V
disp(V_D1,"Value of V_D1 in volt is ")
disp(V_D2,"Value of V_D2 in volt is ")


// Part (c)
disp("Part (c)")
V_CM=1;// in V
V_GS= 0.82;// in V
V_G= 1;// in V
V_S= V_G-V_GS;// in V
disp(V_S,"Value of V_S in volt is :")
i_D1= I/2;// in mA
disp(i_D1,"Value of i_D1 in mA is :")
i_D1=i_D1*10^-3;// in A
V_D1= V_DD-i_D1*R_D;// in V
V_D2=V_D1;// in V
disp(V_D1,"Value of V_D1 in volt is ")
disp(V_D2,"Value of V_D2 in volt is ")

// Part (d)
disp("Part (d)")
V_CM_max= Vt+V_DD-i_D1*R_D
disp(V_CM_max,"Highest value of V_CM in volt is :")

// Part (e)
V_S= 0.4;// in V
disp("Part (e)")
V_CM_min= -V_SS+V_S+Vt+V_OV;// in V
disp(V_CM_min,"Lowest value of V_CM in volt is")
V_Smin= V_CM_min-V_GS;// in volt
disp(V_Smin,"Lowest value of V_S in volt is")

