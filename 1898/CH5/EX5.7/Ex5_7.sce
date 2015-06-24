clear all; clc;

disp("Scilab Code Ex 5.7 : ")

//Given:
E = 80*10^3; //MPa
d = 14/1000; //m
r = d/2; //m
R = 100; //mm
l_ac = 0.4; //m
l_cd = 0.3; //m
l_de = 0.5; //m
T_c = 280;//Nm
T_a = 150; //Nm
T_d = 40; //Nm
T_ac = T_a; //Nm
T_cd = T_ac - T_c; 
T_de = T_cd - T_d;

//Angle of Twist:
J = (%pi/2)*(r^4);

T = [T_ac T_cd T_de];
l = [l_ac l_cd l_de];

sumTwist = 0;

for i= 1:3
    sumTwist = sumTwist+ ((T(i)*l(i))/(J*E*10^6));
end

displacement = - sumTwist*R;

//Display:


printf('\n\nThe angle of twist of the shaft          = %1.3f rad',sumTwist);
printf('\nThe displacement of tooth P on gear A    = %1.1f mm',displacement);

//---------------------------------------------------------------------END------------------------------------------------------------------


