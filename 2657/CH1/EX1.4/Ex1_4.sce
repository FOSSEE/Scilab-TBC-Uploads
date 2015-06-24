//Calculations on four stroke petrol engine
clc,clear
//Given:
bp=35 //Brake power in kW
eta_m=80 //Mechanical efficiency in percent
bsfc=0.4 //Brake specific fuel consumption in kg/kWh
A_F=14/1 //Air-fuel ratio
CV=43000 //Calorific value in kJ/kg
//Solution:
//(a)
ip=bp*100/eta_m //Indicated power in kW
//(b)
fp=ip-bp //Frictional power in kW
//(c)
//Since, 1 kWh = 3600 kJ
eta_bt=1/(bsfc*CV/3600) //Brake thermal efficiency
//(d)
eta_it=eta_bt/eta_m*100 //Indicated thermal efficiency
//(e)
m_f=bsfc*bp //Fuel consumption in kg/hr
//(f)
m_a=A_F*m_f //Air consumption in kg/hr
//Results:
printf("\n (a)The indicated power, ip = %.2f kW\n (b)The friction power, fp = %.2f kW",ip,fp)
printf("\n (c)The brake thermal efficiency, eta_bt = %.1f percent\n (d)The indicated thermal efficiency, eta_it = %.1f percent",eta_bt*100,eta_it*100)
printf("\n (e)The fuel consumption per hour, m_f = %.1f kg/hr\n (f)The air consumption per hour, m_a = %d kg/hr\n\n",m_f,m_a)
