clear all; clc;

disp("Scilab Code Ex 4.15 : ")

//Given
weight = 15; //kN
l_ab = 5; //m
l_ac= 5.0075; //m
area = 30; //mm^2

//calculations:
strain_ab = (l_ac-l_ab)/l_ab; 
max_strain = 0.0017; 

stress_ab = (350*strain_ab)/max_strain;
F_ab = stress_ab*area; // F= stress*area
E_st = 350/max_strain; //Modulus ofelasticity

del1 = l_ab/(area*10^-6*E_st*10^3); //del = PL/AE
del2 = l_ac/(area*10^-6*E_st*10^3); //del = PL/AE

//Eqn1 = T_ab + T_ac = weight
//Eqn2 = del1*T_ab - del2*T_ac = (l_ac-l_ab)

//Solving using matrices:
A = [1 1;del1 -del2];
b = [weight; (l_ac-l_ab)];
T = A\b;

T_ab = T(1);
T_ac = T(2);

stress_in_ab = (T_ab*10^3)/area;

if(stress_in_ab>350)
    T_ab = (350*area)/1000;
end

T_ac = 15-T_ab;
stress = (T_ac*10^3)/area;
strain_ac = (stress*max_strain)/350;

elong_ac = strain_ac*l_ac; //m
elong_ab = (l_ac-l_ab)+elong_ac; //m



//Display:

printf('\n\nThe force experienced by wire AB  = %1.1f kN',T_ab);
printf('\nThe force experienced by wire AC  = %1.1f kN',T_ac);
printf('\nThe elongation in wire AB         = %1.5f m',elong_ab);
printf('\nThe elongation in wire AC         = %1.5f m',elong_ac);

//---------------------------------------------------------------------------END------------------------------------------------------------------------
