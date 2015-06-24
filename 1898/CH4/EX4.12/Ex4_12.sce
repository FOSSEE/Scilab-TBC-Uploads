
clear all; clc;

disp("Scilab Code Ex 4.12 : ")

//Given:
h = 0.250; //m
T1 = 20; //degree celcius
udl = 150; //kN/m
T2 = 80; //degree celcius
len = 0.3; //m
dia_steel = 0.04;//m
r_steel = 0.02;
dia_aluminium = 0.06; //m
r_al = dia_aluminium/2;
area_st = %pi*(r_steel^2);
area_al = %pi*(r_al^2);
F = 90*10^3;//N
alpha_st = 12*10^-6; //per degree celcius
alpha_al = 23*10^-6; //per degree celcius
E_st = 200*10^9; // N/m^2
E_al = 73.1*10^9; // N/m^2

//Equilibrium:
//From the free body diagram: Eqn1 : 2F_st + F_al-


// -delst_T + F_st*delst_F = -delal_T + F_al*delal_F

//Eqn2 : 165.9*10^3  =1.216F_al - F_st F = 0

//Compatibility:
delst_T = alpha_st*(T1+T2)*h;
delst_F = h/(area_st*E_st);
delal_T = alpha_al*(T1+T2)*h;
delst_F = h/(area_al*E_al);

coeffMat = [2 1; -1 1.216]
b= [90*10^3 ; 165.9*10^3]
F = coeffMat\b;
F_st = F(1)/1000;
F_al =F(2)/1000;
F_al =ceil(F_al);

//Display:


printf("\n\nThe force on the steel post            = %1.1f kN",F_st);
printf('\nThe force on the aluminium post        = %1.1f kN',F_al);

//-----------------------------------------------------------------------------END----------------------------------------------------------------------------------

