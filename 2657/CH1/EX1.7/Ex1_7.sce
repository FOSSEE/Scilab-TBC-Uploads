//Calculations on two stroke CI engine
clc,clear
//Given:
bp=5000 //Brake power in kW
fp=1000 //Friction power in kW
m_f=2300 //Fuel consumption in kg/hr
A_F=20/1 //Air-fuel ratio
CV=42000 //Calorific value of fuel in kJ/kg
//Solution:
//(a)
ip=bp+fp //Indicated power in kW
//(b)
eta_m=bp/ip //Mechanical efficiency
//(c)
m_a=A_F*m_f //Air consumption in kg/hr
//(d)
eta_it=ip*3600/(m_f*CV) //Indicated thermal efficiency
//(e)
eta_bt=eta_it*eta_m //Brake thermal efficiency
//Results:
printf("\n (a)The indicated power, ip = %d kW",ip)
printf("\n (b)The mechanical efficiency, eta_m = %d percent",eta_m*100)
printf("\n (c)The air consumption, m_a = %d kg/hr",m_a)
printf("\n (d)The indicated thermal efficiency, eta_it = %.1f percent\n (e)The brake thermal efficiency, eta_bt = %.1f percent\n\n",eta_it*100,eta_bt*100)
