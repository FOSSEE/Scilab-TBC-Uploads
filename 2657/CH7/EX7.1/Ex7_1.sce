//Calculations for comparison of SI and CI engine
clc,clear
//Given:
//For SI engine
F_A1=1/13.5 //Fuel air ratio
CV1=44000 //Calorific value in kJ/kg
eta_bt1=25 //Brake thermal efficiency in percent
m_f1=1 //Fuel consumption in kg/hr
//For CI engine
A_F2=25/1 //Air fuel ratio
CV2=42000 //Calorific value in kJ/kg
eta_bt2=38 //Brake thermal efficiency in percent
//Solution:
//(a)SI engine
bp1=m_f1*CV1*eta_bt1/(100*3600) //Brake power in kW
bsfc1=m_f1/bp1 //Brake specific fuel consumption in kg/kWh
m_a1=bsfc1/F_A1 //Air consumption in kg/kWh
//(a)CI engine
m_f2=1 //Fuel consumption in kg/hr
bp2=m_f2*CV2*eta_bt2/(3600*100) //Brake power in kW
bsfc2=m_f2/bp2 //Brake specific fuel consumption in kg/kWh
m_a2=bsfc2*A_F2 //Air consumption in kg/kWh
//Comparison
R_bp=bp1/bp2 //Ratio of brake power of SI to CI
R_bsfc=bsfc1/bsfc2 //Ratio of brake specific fuel consumption of SI to CI
R_m_a=m_a1/m_a2 //Ratio of fuel consumption of SI to CI
//Results:
printf("\n For SI engine\n\tBrake output, bp = %.2f kW/kg of fuel\n\tBrake specific fuel consumption, bsfc = %.3f kg/kWh",bp1,bsfc1)
printf("\n For CI engine\n\tBrake output, bp = %.1f kW/kg of fuel\n\tBrake specific fuel consumption, bsfc = %.3f kg/kWh",bp2,bsfc2)
printf("\n The air consumption\n\tfor SI engine, m_a = %.2f kg/kWh\n\tfor CI engine, m_a = %.2f kg/kWh",m_a1,m_a2)
printf("\n Comparison of SI to CI\n\tbp = %.3f\n\tbsfc = %.3f\n\tair consumption = %.3f\n\n",R_bp,R_bsfc,R_m_a)
