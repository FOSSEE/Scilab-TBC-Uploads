//Variation of bsfc with speed
clc,clear
//Given:
eta_it=30 //Indicated thermal efficiency in percent
fp_1500=18 //Friction power at 1500 rpm in kW
fp_2500=45 //Friction power at 2500 rpm in kW
bp=75 //Brake power in kW
CV=44000 //Calorific value of fuel in kJ/kg
//Solution:
isfc=3600/(CV*eta_it/100) //Indicated specific fuel consumption in kg/kWh
eta_m_1500=bp/(bp+fp_1500) //Mechanical efficiency at 1500 rpm
bsfc_1500=isfc/eta_m_1500 //Brake specific fuel consumption at 1500 rpm in kg/kWh
eta_m_2500=bp/(bp+fp_2500) //Mechanical efficiency at 2500 rpm
bsfc_2500=isfc/eta_m_2500 //Brake specific fuel consumption at 2500 rpm in kg/kWh
//Results:
printf("\n The brake specific fuel consumption\n\tat 1500 rpm, bsfc_1500 = %.3f kg/kWh\n\tat 2500 rpm, bsfc_2500 = %.3f kg/kWh\n\n",bsfc_1500,bsfc_2500)
