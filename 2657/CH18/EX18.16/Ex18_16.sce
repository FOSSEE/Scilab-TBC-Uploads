//Calculations on two stroke engine
clc,clear
//Given:
d=200,l=250 //Bore and stroke in mm
imep=4.5*10^5 //Indicated mean effective pressure in N/m^2
m_f=7 //Fuel consumption in kg/hr
CV=43500 //Calorific value in kJ/kg
N=180 //Engine speed in rpm
//Solution:
//(a)
ip=imep*l*%pi/4*d^2*N/60*10^-9*10^-3 //Indicated power in kW
//(b)
eta_it=ip*3600/(m_f*CV) //Indicated thermal efficiency
//Results:
printf("\n (a)The indicated power, ip = %.1f kW",ip)
printf("\n (b)The indicated thermal efficiency, eta_it = %.1f percent\n\n",eta_it*100)
