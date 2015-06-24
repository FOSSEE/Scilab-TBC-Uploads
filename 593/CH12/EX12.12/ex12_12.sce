clear;
//clc();

// Example 12.12
// Page: 340
printf("Example-12.12  Page no.-340\n\n");

//***Data***//
p_i = 1;//[atm] initial pressure 
P = 150;//[atm] final pressure
T = 273+25;//[K] Given temperature
R = 8.314;//[J/(mol*K)]

// Now ignoring the difference between 25C and 20C, we use the values given in the table A.8 (page 427) to get 
delta_g_0 = 10.54*1000;//[J/mol]
// And thus 
K = exp((-delta_g_0)/(R*T));

// Now the chemical reaction is given by
// C2H5OH + CH3COOH = C2H5OOC2H5 + H2O

// Let we start with 1 mol each of ethanol and acetic acid, and at equilibrium 'e' moles each of the reactants reacted, then
// remaining amount of each of the two reactants will be (1-e) and that products formation will be 'e' mol each

// We have 
// K = (a_C2H5OOC2H5*a_H2O)/(a_C2H5OH*a_CH3COOH) = (x_C2H5OOC2H5*x_H2O)/(x_C2H5OH*x_CH3COOH) = (e*e)/((1-e)*(1-e))
// Now solving for 'e'
deff('[y]=f(e)','y = (e*e)/((1-e)*(1-e))-K');
e = fsolve(0,f);

// To see the effect of changing the pressure we first compute the volume increase of the reaction 
// delta_v = v_C2H5OOC2H5 + v_H2O - v_C2H5OH - v_CH3COOH, where v_i is the molar volume of the ith component
// From the Table 12.4(page 340), we have
v_C2H5OOC2H5 = 97.67;//[ml/mol]
v_H2O = 18.03;//[ml/mol]
v_C2H5OH = 58.30;//[ml/mol]
v_CH3COOH = 57.20;//[ml/mol]

// Thus volume increase of the reaction is
delta_v = v_C2H5OOC2H5 + v_H2O - v_C2H5OH - v_CH3COOH;//[ml/mol]

// So, from Le Chatelier's principal, on increasing the pressure , the reaction is forced in the direction of the reactant or away from the product 
// To calculate the extent of shifting we will take the help of the activity of each of the four component 
// a_i = (f_i/f_i_0) = (x_i*Y_i*p_i)/p_i*exp(v/(R*T)*(P-p_i))
// we will assume that this is an ideal solution so that Y_i = 1.00, for every component

// Now substituting the activity of each component in the expression of the equilibrium constant given above, we have
// K = (x_C2H5OOC2H5*x_H2O)/(x_C2H5OH*x_CH3COOH)*exp[(delta_v)/(R*T)*(P-p_i)]
// or
// K = (e_1*e_1)/((1-e_1)*(1-e_1))*exp[(delta_v)/(R*T)*(P-p_i)]

// Solving for 'e_1'
deff('[y]=g(e_1)','y = (e_1*e_1)/((1-e_1)*(1-e_1))*exp((delta_v)/(R*T)*(P-p_i))-K');
e_1 = fsolve(0.2,g);

// Now if we carry out the calculation to enough significant figures then
a = e_1/e;

// It indicates that e_1 is 'a' times of that of the e
printf("On increasing the pressure from 1 atm to 150 atm, the reacted amount of the equimolar reactants at equilibrium becomes %f times of initial",a);
