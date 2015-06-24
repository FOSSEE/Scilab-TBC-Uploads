//Calculations on diesel engine
clc,clear
//Given:
bp=5 //Brake power in kW
eta_it=30 //Indicated thermal efficiency in percent
eta_m=75 //Mechanical efficiency in percent (printing error)
//Solution:
ip=bp*100/eta_m //Indicated power in kW
CV=42000 //Calorific value of diesel(fuel) in kJ/kg
m_f=ip*3600/(eta_it*CV/100) //Fuel consumption in kg/hr
//Density of diesel(fuel) = 0.87 kg/l
rho_f=0.87 //Density of fuel in kg/l
V_f=m_f/rho_f //Fuel consumption in l/hr
isfc=m_f/ip //Indicated specific fuel consumption in kg/kWh
bsfc=m_f/bp //Brake specific fuel consumption in kg/kWh
//Results:
printf("\n The fuel consumption of engine, m_f in,\n (a)kg/hr = %.3f kg/hr\n (b)litres/hr = %.2f l/hr",m_f,V_f)
printf("\n\n (c)Indicated specific fuel consumption, isfc = %.3f kg/kWh",isfc)
printf("\n (d)Brake specific fuel consumption, bsfc = %.3f kg/kWh\n\n",bsfc)
//Data in the book is printed wrong
