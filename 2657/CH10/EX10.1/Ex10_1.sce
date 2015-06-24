//Calculations on SI engine
clc,clear
//Given:
n=6 //Number of cylinders
V_d=700 //Displaced volume per cylinder in cm^3
bp=78 //Brake power in kW
N=3200 //Angular speed of engine in rpm
m_f=27 //Petrol consumption in kg/hr
CV=44 //Calorific value in MJ/kg
//Solution:
//(1)
A_F=12 //Air-fuel ratio
P1=0.9,T1=32+273 //Intake air pressure and temperature in bar and K
m_a=A_F*m_f //Air consumption in kg/hr
R=287 //Specific gas constant in J/kgK
rho_a=P1*10^5/(R*T1) //Density of air in kg/m^3
eta_vol=m_a/(60*rho_a*V_d*n*10^-6*N/2) //Volumetric efficiency
//(2)
eta_bt=bp*3600/(m_f*CV*1000) //Brake thermal efficiency
//(3)
T=bp*60/(2*%pi*N) //Brake torque in kNm
//Results:
printf("\n (1)The volumetric efficiency, eta_vol = %.2f percent",eta_vol*100)
printf("\n (2)The brake thermal efficiency, eta_bt = %.2f percent",eta_bt*100)
printf("\n (3)The brake torque, T = %.0f Nm\n\n",T*1000)
