clear;
//clc();

// Example 13.3
// Page: 352
printf("Example-13.3  Page no.-352\n\n");

//***Data***//
P = 10;//[MPa] given pressure
T = 250;//[C] Temperature
// Let the total number of moles in the feed be one, then
n_T_0 = 1;//[mol]
n_CO = 0.15;//[mol]
n_CO2 = 0.08;//[mol]
n_H2 = 0.74;//[mol]
n_CH4 = 0.03;//[mol]

// The two simultaneous reactions taking place are
// CO + 2*H2 = CH3OH
// CO2 + H2  = CO + H2O

// Let us denote the first reaction by 1 and the second reaction by 2
// and K_i = (K/K_v)*[P/(1 atm)]^(-summation(v_i))
// and that    summation(v_i) = V_i

// Then from the table 13.C (page 353) as reported in the book, we have 
V_1 = -2;
V_2 = 0;
K_1 = 49.9;// For the first reaction 
K_2 = 0.032;// For the second reaction

// Now let v_i denotes the stoichiometric coefficient of species 'i', then
v_CO_1 = -1;
v_H2_1 = -2;
v_CH3OH_1 = +1;
v_CO2_2 = -1;
v_H2_2 = -1;
v_CO_2 = +1;
v_H2O_2 = +1;

// Let e_1 = the moles of CO reacted in reaction 1 and e_2 = the moles of CO2 reacted in reaction 2.
// Now mol fractions of each of the species in the equilibrium is 
// y_CO = (n_CO+v_CO_1*e_1+v_CO_2*e_2)/(n_T_0+e_1*V_1+e_2*V_2) = (0.15-1*e_1+1*e_2)/(1+e_1*(-2)+e_2*(0)) = (0.15 - e_1 + e_2)/(1 - 2*e_1)

// similarily
// y_H2 = (n_H2+v_H2_1*e_1+v_H2_2*e_2)/(n_T_0+e_1*V_1+e_2*V_2) = (0.74 - 2*e_1 - e_2)/(1 - 2*e_1)

// y_CH3OH = (n_CH3OH+v_CH3OH_1*e_1+v_CH3OH_2*e_2)/(n_T_0+e_1*V_1+e_2*V_2) = (0 + e_1)/(1 - 2*e_1)

// y_CO2 = (n_CO2+v_CO2_1*e_1+v_CO2_2*e_2)/(n_T_0+e_1*V_1+e_2*V_2) = (0.08 - e_2)/(1 - 2*e_1)

// y_H2O = (n_H2O+v_H2O_1*e_1+v_H2O_2*e_2)/(n_T_0+e_1*V_1+e_2*V_2) = (0 + e_2)/(1 - 2*e_1)

// Now putting the values in the expression of the equilibrium constant of the reactions, for the reaction 1 we have

// K_1 = ((0 + e_1)/(1 - 2*e_1))/(((0.15 - e_1 + e_2)/(1 - 2*e_1))*((0.74 - 2*e_1 - e_2)/(1 - 2*e_1))^(2))

// K_2 = (((0.15 - e_1 + e_2)/(1 - 2*e_1))*((0 + e_2)/(1 - 2*e_1)))/(((0.08 - e_2)/(1 - 2*e_1))*((0.74 - 2*e_1 - e_2)/(1 - 2*e_1)))

// e = [e_1 e_2]
// Solving the two given simultaneous equations,we have
function[f]=F(e)
    f(1) = ((0 + e(1))/(1 - 2*e(1)))/(((0.15 - e(1) + e(2))/(1 - 2*e(1)))*((0.74 - 2*e(1) - e(2))/(1 - 2*e(1)))^(2)) - K_1;
    f(2) = (((0.15 - e(1) + e(2))/(1 - 2*e(1)))*((0 + e(2))/(1 - 2*e(1))))/(((0.08 - e(2))/(1 - 2*e(1)))*((0.74 - 2*e(1) - e(2))/(1 - 2*e(1)))) - K_2;
    funcprot(0);
endfunction

// Initial guess:
e = [0.109 0];
y = fsolve(e,F);
e_1 = y(1);
e_2 = y(2);

// So, percent conversion of CO2 is given as
// (moles of CO2 reacted)/(moles of CO2 fed) i.e.
c_CO2 = e_2/(n_CO2)*100;
// Number of moles of CO Formed by the second reaction is 0.032
// So, percent conversion of CO is given as
c_CO = e_1/(n_CO + 0.032)*100;

printf(" Percent conversion of CO is %f%%\n",c_CO);
printf(" Percent conversion of CO2 is %f%%",c_CO2);
