clear;
clc;

// Illustration 3.3
// Page: 162

printf('Illustration 3.3 -  Page: 162\n\n');

// solution
//*****Data*****//
// a-ammonia   b-air   c-water
T = 300; // [K]
P = 101.3; // [kPa]
R = 8.314; // [cubic m.Pa/mole.K]
V_b = 15; // [cubic m]
m_a = 10; // [kg]
m_c = 45; // [kg]
M_a = 17; // [molecular mass of ammonia, gram/mole]
M_c = 18; // [molecular mass of water, gram/mole]
//*****//

n_b = V_b*P/(R*T); // [kmole]
n_a = m_a/M_a; // [kmole]
n_c = m_c/M_c; // [kmole]

// L_a as the number of kmol of ammonia in the liquid phase when equilibrium is achieved
// And n_a-L_a kmol of ammonia will remain in the gas phase
// x_a = L_a/(n_c+L_a)                     (1)
// y_a = (n_a-L_a)/(n_b+n_a-L_a)           (2)
// gamma = 0.156+0.622*x_a*(5.765*x_a-1)   (3)  for x_a <= 0.3 
// y_a = 10.51*gamma*x_a;                  (4)
// Equations (1),(2),(3), and (4) are solved simultaneously
deff('[y] = f12(L_a)','y = ((n_a-L_a)/(n_b+n_a-L_a))-(10.51*(0.156+(0.622*(L_a/(n_c+L_a))*(5.765*(L_a/(n_c+L_a))-1)))*(L_a/(n_c+L_a)))');
L_a = fsolve(0.3,f12); // [kmole]

x_a = L_a/(n_c+L_a);
y_a = (n_a-L_a)/(n_b+n_a-L_a);
gammma_a = 0.156+0.622*x_a*(5.765*x_a-1);

printf("At equilibrium the ammonia content of the liquid phase will be %f\n\n",x_a);
printf("At equilibrium the ammonia content of the gas phase will be %f\n\n",y_a);
printf("The amount of ammonia absorbed by the water will be %f kmole\n\n",L_a);  