//Calculations for comparison of SI and CI engine
clc,clear
//Given:
//For SI engine
s1=0.72 //Specific gravity of gasoline fuel
CV1=44800 //Calorific value of gasoline fuel in kJ/kg
eta_bt1=20 //Brake thermal efficiency in percent
A_F1=14 //Air fuel ratio
//For CI engine
s2=0.87 //Specific gravity of diesel oil
CV2=43100 //Calorific value of diesel oil in kJ/kg
eta_bt2=30 //Brake thermal efficiency in percent
A_F2=21 //Air fuel ratio
//Solution:
//SI engine
bsfc_SI=3600*100/(eta_bt1*CV1) //Brake specific fuel consumption in kg/kWh
m_a_SI=A_F1*bsfc_SI //Air consumption in kg/kWh
//CI engine
bsfc_CI=3600*100/(eta_bt2*CV2) //Brake specific fuel consumption in kg/kWh
m_a_CI=A_F2*bsfc_CI //Air consumption in kg/kWh
//Results:
printf("\n For SI engine\n\tBrake specific fuel consumption, bsfc_SI = %.3f kg/kWh\n\tAir consumption = %.2f kg/kWh",bsfc_SI,m_a_SI)
printf("\n For CI engine\n\tBrake specific fuel consumption, bsfc_CI = %.3f kg/kWh\n\tAir consumption = %.2f kg/kWh",bsfc_CI,m_a_CI)
