//Effect of variable specific heat on maximum pressure
clc,clear
//Given:
r=6 //Compression ratio
CV=44000 //Calorific value in kJ/kg of fuel
A_F=15/1 //Air-fuel ratio
P1=1 //Pressure at 1 in bar
T1=60+273 //Temperature at 1 in K
n=1.32 //Index of compression
T=poly(0,"T") //Defining temperature(T) as unknown in K
cv=0.71+20D-5*T //Specific heat at constant volume as a function of temperature(T) in kJ/kgK
cv_c=0.71 //Constant specific heat in kJ/kgK
//Solution:
//Refer fig 3.19
P2=P1*r^n //Pressure at 2 in bar
T2=floor(T1*r^(n-1)) //Temperature at 2 in K
T3=poly(0,"T3") //Defining temperature(T3) as unknown in K
T_av=(T3+T2)/2 //Average temperature during combustion of charge in K
cv_mean=horner(cv,T_av) //Mean specific heat in kJ/kgK
//Assume cycle consumes 1 kg of air
m_a=1,m_f=m_a/A_F,m_c=m_f+m_a //Mass of air, fuel, and charge in kg
Q1=CV*m_f //Heat added per kg of air in kJ/kg
T3_v=roots(Q1-cv_mean*m_c*(T3-T2)),T3_v=T3_v(2) //Temperature at 3 in K
P3_v=P2*T3_v/T2 //Pressure at 3 in bar
//For constant specific heat
T3_c=roots(Q1-cv_c*m_c*(T3-T2)) //Temperature at 3 for constant specific heat in K
P3_c=P2*T3_c/T2 //Pressure at 3 for constant specific heat in bar
//Results:
printf("\n The maximum pressure in the cycle for variable specific heat, P3 = %.1f bar",P3_v)
printf("\n The maximum pressure in the cycle for constant specific heat, P3 = %.1f bar\n\n",P3_c)
