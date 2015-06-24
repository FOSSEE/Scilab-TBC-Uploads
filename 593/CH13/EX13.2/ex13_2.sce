clear;
//clc();

// Example 13.2
// Page: 351
printf("Example-13.2  Page no.-351\n\n");

//***Data***//
n_H2SO4 = 1;//[mol] mole of the sulphuric acid
w_water = 1000;//[g] weight of the water 
T =273.15+25;//[K] temperature
R = 8.314;//[J/(mol*K)]

// We the two sequential reaction, in which the first reaction is
// H2SO4 = HSO4-  +  H+

// From the Table A.8 (page 427) as given in the book, free energy of the above species are 
g_0_H = 0;//[J/mol] free energy of the hydrogen ion
g_0_HSO4 = -756.01*1000;//[J/mol] free energy of the bisulphate ion
g_0_H2SO4 = -744.50*1000;//[J/mol] free enery of sulphuric acid

// So 
delta_g_0 = g_0_H + g_0_HSO4 - g_0_H2SO4;//[J/mol]

// So equilibrium constant of the reaction is given by
K_1 = exp((-delta_g_0)/(R*T));

// Now the second reaction is which is going on sequentialy is
// HSO4- = SO4(-2)  +  H+

// Again from the Table A.8 reading the values of free energy of the species of the above reaction, we have
g_0_H = 0;//[J/mol] free energy of the hydrogen ion
g_0_SO4 = -744.62*1000;;//[J/mol] free energy of sulphate ion
g_0_HSO4 = -756.01*1000;//[J/mol] free energy of the bisulphate ion

// So 
delta_g_1 = g_0_H + g_0_SO4 - g_0_HSO4;//[J/mol]

// Equilibrium constant of thi reaction is 
K_2 = exp((-delta_g_1)/(R*T));

// Now we have 1 mol of H2SO4 initially. Let e_1 mol of H2SO4 ionised at equilibrium
// Then amount of the each of two product i.e. bisulphate and hydrogen ion will be e_1 mol
// Now for the second reaction e_1 mol of the bisulphate ion will be treated as  initial concentration.
// If at equilibrium e_2 moles of bisulphate ion has ionised
// In this case the amount of each of two product of this reaction will be e_2 mol
// So final amount of each of the species (in moles) at equilibrium is given as 
// n_H2SO4 = (1-e_1)
// n_HSO4 = (e_1-e_2)
// n_SO4 = e_2
// n_H = (e_1+e_2)

// now
// K_1 = ([HSO4]*[H])/[H2SO4] = ((e_1-e_2)*(e_1+e_2))/(1-e_1)...................(1)
// and that for the second reaction 
// K_2 = ([SO4]*[H])/[HSO4] = ((e_2)*(e_1+e_2))/(e_1-e_2).......................(2)

// e = [e_1 e_2]
// Solving the two given simultaneous equations,we have
function[f]=F(e)
    f(1) = ((e(1)-e(2))*(e(1)+e(2)))/(1-e(1)) - K_1;
    f(2) = ((e(2))*(e(1)+e(2)))/(e(1)-e(2)) - K_2;
    funcprot(0);
endfunction

// Initial guess:
e = [0.8 0.1];
y = fsolve(e,F);
e_1 = y(1);
e_2 = y(2);

// So, concentration of the various species in equilibrium is given as 
m_H2SO4 = 1-e_1;// [molal]
m_HSO4 = e_1 - e_2;//[molal]
m_SO4 = e_2;//[molal]
m_H = e_1 + e_2;//[molal]

printf(" The equilibrium concentration of H2SO4 in terms of molality is %f molal\n",m_H2SO4);
printf(" The equilibrium concentration of HSO4- in terms of molality is %f molal\n",m_HSO4);
printf(" The equilibrium concentration of SO4-- in terms of molality is %f molal\n",m_SO4);
printf(" The equilibrium concentration of H+ in terms of molality is    %f molal",m_H);
