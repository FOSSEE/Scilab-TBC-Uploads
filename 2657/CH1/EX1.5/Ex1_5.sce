//Calculations on SI engine
clc,clear
//Given:
F_A=0.07/1 //Fuel-air ratio
bp=75 //Brake power in kW
eta_bt=20 //Brake thermal efficiency in percent
rho_a=1.2 //Density of air in kg/m^3
rho_f=4*rho_a //Density of fuel vapour in kg/m^3
CV=43700 //Calorific value of fuel in kJ/kg
//Solution:
m_f=bp*3600/(eta_bt*CV/100) //Fuel consumption in kg/hr
m_a=m_f/F_A //Air consumption in kg/hr
V_a=m_a/rho_a //Volume of air in m^3/hr
V_f=m_f/rho_f //Volume of fuel in m^3/hr
V_mixture=V_f+V_a //Mixture volume in m^3/hr
//Results:
printf("\n The air consumption, m_a = %.1f kg/hr",m_a)
printf("\n The volume of air required, V_a = %.1f m^3/hr",V_a)
printf("\n The volume of mixture required = %.1f m^3/hr\n\n",V_mixture) //(printing error)
//Answer in the book is printed wrong
