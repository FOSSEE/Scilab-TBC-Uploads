//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.9
clear;
clc;

//Given
//2A(g) - B(g)+C(g)
T = 400;//Temperature in Kelvin
P = 1;//Pressure in atm
R = 1.98;//gas constant in Kcal/Kgmole K
del_Fo = 3000;//Standard free energy of the reaction in Kcal/Kgmole
n_A = 1;//Kgmoles of A
n_B = 0.1;//Kgmoles of B
n_C = 0.1;//Kgmoles of C

//To find out the equilibrium has been attained or not. If not then calculate the equilibrium composition and also find out whether the equilibrium composition  will change or not if pressure were increased to 3 atm.
//(1)To find out the equilibrium has been attained or not. If not then calculate the equilibrium composition
//P_B/P_C = 1 (Given)
n_T = n_A+n_B+n_C;//Total Kgmoles of the component
p_A = (n_A/n_T)*P;//Partial pressure of A
p_B = (n_B/n_T)*P;//Partial pressure of B
p_C = (n_C/n_T)*P;//Partial pressure of C
//Using the relation 14.36 (page no 312)
del_F = del_Fo + (R*T)*log((p_B*p_C)/(p_A^2));
if del_F == 0;
    then mprintf('1.Equilibrium has been attained.');
else
    mprintf('1.Equilibrium has not been attained.');
end
//Equilibrium composition
//At equilibrium del_F = 0
//From equations 14.35(page no 312) and 14.49(page no 320), we got the relations (a),(b)(page no 331) &(c)(page no 332) and
//ln(p_C^2/(P-(2*p_C^2)))= -del_Fo/(R*T); 
Kp = %e^(-del_Fo/(R*T))//equilibrium constant in terms of pressure
p_C = (Kp^(1/2))/(1+2*(Kp^(1/2)));//Partial pressure of C at equilibrium in atm
p_B = p_C;//as p_B/p_C = 1
p_A = P-(2*p_C);//Partial pressure of A at equilibrium in atm
N_A = p_A*P*100;
N_B = p_B*P*100;
N_C = p_C*P*100;
mprintf('\n   Equilibrium composition of A,B and C are %f,%f and %f mole percent respectively.',N_A,N_B,N_C);

//2.Calculation of composition at 400 K and 3 atm and vapour pressure of C at 400 K is 0.3 atm
P = 3;//Pressure in atm
P_C = 0.3;//Vapour pressure of C in atm
//Since m=0,pressure will not have an effect on equilibrium compositions.
mprintf('\n\n 2.The compositions will be the same as above on increasing the pressure.');
p_B1 = p_B*P;//Partial pressure of B in atm
p_C1 = p_B1;//Partial pressure of C in atm
p_A1 = p_A*P;//Partial pressure of A in atm
if P_C < p_C1
p_A2 = ((p_B1*P_C)/Kp)^(1/2);//decreased partial pressure of A in atm
mprintf('\n   The partial pressure of A drops from %f to %f to compensate for the amount of C condensed.',p_A1,p_A2);
//end
