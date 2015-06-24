clear;
clc;
// Example 19.3
printf('Example 19.3\n\n');
//Page No.576
// Solution 

P_atm =  1 ;//[atm]
P =  760 ;//[mm of Hg]
x_1 = 4/100 ;// Mole fraction of hexane in liquid phase
// Constant A,B and C for Antoine eqn. of n_hexane 
A1 = 15.8366;
B1 = 2697.55 ;
C1 = -48.784;
// Constant A,B and C for Antoine eqn. of n_octane
A2 = 15.9798;
B2 = 3127.60 ;
C2 = -63.633;

// Solve for bubble point temperature by eqn. obtained by using Antoine equation
deff('[y] = f(T)','y = exp(A1-(B1/(C1+T)))*x_1 +exp(A2-(B2/(C2+T)))*(1-x_1)  - P');
T = fsolve(390,f) ;// Bubble point temperature 
funcprot(0);
printf('Bubble point temperature is %.1f K\n',T);

// Composition of first vapour
// Get vapour pressure of hexane and octane from Perry, it is
vp_1 =  3114 ;//  vapour pressure of hexane-[mm of Hg]
vp_2 = 661 ;//  vapour pressure of octane-[mm of Hg]
y_1 = vp_1*x_1/P ;// Mole fraction of hexane in vapour phase
y_2 =  1- y_1 ;//Mole fraction of octane in vapour phase
printf('\n Composition of first vapour.\n ');
printf('Component            Mole fraction.\n ');
printf('n_hexane             %.3f\n',y_1);
printf(' n_octane             %.3f\n',y_2);