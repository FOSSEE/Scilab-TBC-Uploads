clear;
clc;

// Illustration 1.3
// Page: 9

printf('Illustration 1.3 - Page:9 \n\n');

//*****Data*****//
// Blood contains two parts a-blood cells  b-plasma
f_a = 45; // [percent of blood cells by volume]
f_b = 55; // [percent of plasma by volume]
r = 1200; // [Rate of blood which is pumped through artificial kidney, mL/minute]
m_urine = 1540; // [mass of urine collected, g]
x_u = 1.3; // [urea concentration, percent by weight]
// Data for sample of blood plasma
c_urea = 155.3; // [mg/dL]
d = 1.0245; // [specfic gravity of plasma]
//*****//

printf('Illustration 1.3 (a) - Page:9 \n\n');
// Solution (a)

// Basis: 4 hours
// Assuming that the rate of formation and decomposition of urea during the procedure is negligible and that no urea is removed by the patient’s kidneys
// Therefore urea in “clean” blood = urea in “dirty” blood - urea in urine

m_u = m_urine*(x_u/100); // [mass of urea in urine, g]
// total volume of plasma that flows through the artificial kidney in 4 hours
V_b = r*60*(f_b/100)*(1/100)*4; // [dL]
// urea in dirty blood from given plasma concentration
m_ud = c_urea*(1/1000)*V_b; // [g]
// urea removal efficiency
n = (m_u/m_ud)*100;
printf("Urea removal efficiency is %f\n\n",n);
  
printf('Illustration 1.3 (b) - Page:10 \n\n');
// Solution (b)

m_uc = m_ud-m_u; // [mass of urea on clean blood, g]
m_p = d*100*V_b; // [Mass of plasma entering, g]
m_rem = m_p-m_urine; // [Mass of plasma remaining, g]
V_brem = m_rem/(d*100); // [Volume of plasma remaining, dL]
c_y = (m_uc*1000)/V_brem; // [urea concentration in remaining plasma, mg/dL]
printf("urea concentration in the plasma of the cleansed blood is %f mg/dL",c_y);