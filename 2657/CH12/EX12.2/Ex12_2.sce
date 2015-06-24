//Calculation of orifice area
clc,clear
//Given:
n=8 //Number of cylinders
bp=368 //Brake power in kW
N=800 //Engine speed in rpm
bsfc=0.238 //Brake specific fuel consumption in kg/kWh
P1=35,P2=60 //Beginning pressure and maximum pressure in cylinder in bar
P1_i=210,P2_i=600 //Expected pressure and maximum pressure at injector in bar
theta_i=12 //Period of injection in degrees
Cd=0.6 //Coefficient of discharge for the injector
s=0.85 //Specific gravity of the fuel
P_atm=1.013 //Atmospheric pressure in bar
//Solution:
m_f=bsfc*bp/(n*60) //Fuel consumption per cylinder in kg/min
m_f=m_f/(N/2) //Fuel consumption per cycle in kg
t=theta_i/360*60/N //Time for injection in s
m_f=m_f/t //Fuel consumption per cycle in kg/s
deltaP1=P1_i-P1 //Pressure difference at beginning in bar
deltaP2=P2_i-P2 //Pressure difference at end in bar
deltaP_av=(deltaP1+deltaP2)/2 //Average pressure difference in bar
A_f=m_f/(Cd*sqrt(2*s*1000*deltaP_av*10^5)) //Orifice area of fuel injector in m^2
//Results:
printf("\n The Orifice area of fuel injector, Af = %.5f cm^2",A_f*10000)
