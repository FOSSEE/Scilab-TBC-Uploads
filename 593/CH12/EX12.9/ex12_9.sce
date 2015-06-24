clear;
//clc();

// Example 12.9
// Page: 335
printf("Example-12.9  Page no.-335\n\n");

//***Data***//
// Initial moles of the gases are 
n_H2_0 = 1.5;//[mol]
n_N2_0 = 0.5;//[mol]
n_NH3_0 = 0;//[mol]
T_1 = 298.15;//[K]
T_2 = 673.15;//[K]
P = 1;//[bar]

// We start with the equation as 
// [f_NH3/f_0_NH3]/([f_N2/f_0_N2]^(0.5)*[f_H2/f_0_H2]^(1.5)) = K

// For a pressure of 1 bar with the assumption of ideal solution of ideal gases and standard state fugacities of 1 bar,
// a_i = [f_i/f_0_i] = [P*y_i/(1 bar)] = y_i 
// The equilibrium relation is given by 
// K = [y_NH3]/([y_N2]^(0.5)*[y_H2]^(1.5))

// We have the stoichiometric coefficient of N2, H2 and NH3 as -0.5, -1.5 and +1 respectively, so summation(v_i) = -1
// Now using the equilibrium relations which are Equations 12.W, 12.X and 12.Y ( page 322 ), we have 

// K = ((0+e)/(2-e))/(((0.5-0.5*e)/(2-e))^(0.5)*((1.5-1.5*e)/(2-e))^(1.5))
// Form the example 12.8 of this book we know that 
K_298 = 778;// at temperature 298.15K
K_673 = 0.013;// at temperature 673.15K

// Solving for temperature 298.15
deff('[y]=g(e_1)','y = ((0+e_1)/(2-e_1))/(((0.5-0.5*e_1)/(2-e_1))^(0.5)*((1.5-1.5*e_1)/(2-e_1))^(1.5))-K_298');
e_1 = fsolve(0.97,g);
y_NH3_298 = e_1/(2-e_1);

// Similarily solving for temperature 673.15K
deff('[y]=h(e_2)','y = ((0+e_2)/(2-e_2))/(((0.5-0.5*e_2)/(2-e_2))^(0.5)*((1.5-1.5*e_2)/(2-e_2))^(1.5))-K_673');
e_2 = fsolve(0,h);
y_NH3_673 = e_2/(2-e_2);

printf(" The mole fraction of NH3 in the equilibrium at the temperature 298.15K and 1 bar is %f\n",y_NH3_298);
printf(" The mole fraction of NH3 in the equilibrium at the temperature 673.15K and 1 bar is %f",y_NH3_673);