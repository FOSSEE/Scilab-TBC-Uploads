//Calculation of quantity of fuel injected
clc,clear
//Given:
n=6 //Number of cylinders
bsfc=245 //Brake specific fuel consumption in gm/kWh
bp=89 //Brake power in kW
N=2500 //Engine speed in rpm
s=0.84 //Specific gravity of the fuel
//Solution:
m_f=bsfc*bp/(1000) //Fuel consumption in kg/hr
m_f=m_f/n //Fuel consumption per cylinder in kg/hr
m_f=(m_f/3600)/(N/(2*60)) //Fuel consumption per cycle in kg
V_f=m_f*1000/s //Volume of fuel consume per cycle in cc
//Results:
printf("\n The quantity of fuel to be injected per cycle per cylinder, V_f = %.4f cc",V_f)
