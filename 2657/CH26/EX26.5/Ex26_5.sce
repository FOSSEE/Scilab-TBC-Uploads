//Calculations on gas turbine
clc,clear
//Given:
P1=1,P2=6.20 //Pressure at entering and leaving of compressor in bar
T1=300 //Temperature at entering in K
eta_C=88,eta_T=90 //Isentropic efficiencies of compressor and turbine in percent
CV=44186 //Calorific value of fuel in kJ/kg
F_A=0.017 //Fuel air ratio
cp_a=1.005 //Specific heat of air in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
cp_g=1.147 //Specific heat of gas in kJ/kgK
g1=1.333 //Specific heat ratio(gamma) of gas
//Solution:
//Refer fig 26.26
T2!=T1*(P2/P1)^((g-1)/g) //Isentropic temperature at 2 in K
T2=(T2!-T1)/(eta_C/100)+T1 //Temperature at 2 in K
m_a=1 //Assume mass of air in kg
m_f=F_A*m_a //Mass of fuel in kg
T3=(cp_a*m_a*T2+m_f*CV)/(cp_g*(m_a+m_f)) //Temperature at 3 in K
r_p=P2/P1 //pressure ratio
T4!=T3/r_p^((g1-1)/g1) //Isentropic temperature at 4 in K
T4=T3-eta_T/100*(T3-T4!) //Temperature at 4 in K
W_C=m_a*cp_a*(T2-T1) //Compressor work in kJ/kg
W_T=(m_a+m_f)*cp_g*(T3-T4) //Turbine work in kJ/kg
W=W_T-W_C //Work output in kJ/kg
Q1=m_f*CV //Heat added in kJ/kg
eta=W/Q1 //Cycle efficiency
//Results:
printf("\n The turbine work, W_T = %.2f kJ/kg",W_T)
printf("\n The compressor work, W_C = %.2f kJ/kg",W_C)
printf("\n The thermal efficiency, eta = %.2f percent\n\n",eta*100)
