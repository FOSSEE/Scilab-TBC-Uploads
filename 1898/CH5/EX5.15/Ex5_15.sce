clear all; clc;

disp("Scilab Code Ex 5.15 : ")

//Given:
l_cd = 0.5; //m
l_de = 1.5; //m
h =60/1000; //m
w = 40/1000; //m
t_h = 3/1000; //m
t_w = 5/1000; //m
T_c = 60; //Nm
T_d = 25; //Nm
G = 38*10^9; //N/m^2
T1 = T_c - T_d;

//Average Shear Stress:
area = (w-t_w)*(h-t_h);

shear_a = T1/(2*t_w*area*10^6);
shear_b = T1/(2*t_h*area*10^6);

//Angle of Twist:

ds_t = 2*(((w-t_w)/t_h)+((h-t_h)/t_w));
T = [T_c T1];
l = [l_cd l_de];
phi = 0;

for i = 1:2
    phi = phi+ (T(i)*l(i)*ds_t)/(4*area^2*G);
   
end

//Display:

printf('\n\nThe average shear stress of the tube at A    = %1.2f MPa',shear_a);
printf('\nThe average shear stress of the tube at B    = %1.2f MPa',shear_b);
printf('\nThe angle of twist of end C                  = %1.6f rad',phi);

//----------------------------------------------------------------------------END-------------------------------------------------------------------------------

