clear all; clc;

disp("Scilab Code Ex 4.10 : ")

//Given:
T1 = 30; //degree celcius
T2 = 60;//degress celcius
l_ab = 1;//m
area = 10*10*10^-6; //m^2
alpha = 12*10^-6;// per degree celcius
E = 200*10^6; //kPa

//Equilibrium:
//F_a = F_b = F

del_T = T2-T1;
F = alpha*del_T*area*E; //Thermal Stress Formula

avg_normal_comp_stress = (F*10^-3)/area; // sigma = F/A

//Display:

printf("\n\nThe force at A and B                   = %1.1f kN",F);
printf('\nThe average normal compressive stress  = %1.1f MPa',avg_normal_comp_stress);


//-------------------------------------------------------------------END--------------------------------------------------------------------------------------
