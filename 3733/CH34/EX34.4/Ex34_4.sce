// Example 34_4
clc;funcprot(0);
//Given data
PC=30;// Plant capacity in MW
F_l=0.4;// Load factor 
Cc=650;// Caoal costs in Rupees
t=24;// hours
n_o=25;// Over all efficiency in %
CV=25000;// kJ/kg

//Calculation
E_g=PC*F_l*24;// Energy generated in the form of electricity per day in kWh
E_i=E_g/(n_o/100);// Input energy per day in kWh
E_i=E_i*10^3*3600;// kJ
m_f=E_i/CV;// Mass of fuel consumed per day in kg/day
m_f=m_f/1000;// tonnes/day
Cc_d=Cc*m_f;// Cost of coal/day in rupees
printf('\nCost of coal/day=Rs.%0.0f',Cc_d);
// The answer provided in the textbook is wrong
