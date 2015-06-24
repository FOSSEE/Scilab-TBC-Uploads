//Calculations on petrol engine
clc,clear
//Given:
n=4 //Number of cylinders
d_o=7.5 //Diameter of orifice in cm
Cd=0.6 //Coefficient of discharge for orifice
d=11,l=13 //Bore and stroke in cm
N=2250 //Engine speed in rpm
bp=36 //Brake power in kW
m_f=10.5 //Fuel consumption in kg/hr
CV=42000 //Calorific value in kJ/kg
deltaP_o=4.1 //Pressure drop across orifice in cm of water
P=1.013 //Atmospheric pressure in bar
T=15+273 //Atmospheric temperature in K
g=9.81 //Accelaration due to gravity in m/s^2
//Solution:
//(a)
eta_bt=bp*3600/(m_f*CV) //Brake thermal efficiency
//(b)
A=%pi/4*d^2*10^-4 //Area of cylinder in m^2
bmep=bp*1000/(n*l/100*A*N/(2*60)) //Brake mean effective pressure in Pascal
//(c)
rho_w=1000 //Mass density of water in kg/m^3
deltaP_o=rho_w*g*deltaP_o/100 //Pressure drop across orifice in N/m^2
R=0.287 //Specific gas constant in kJ/kgK
rho_a=P*10^5/(R*10^3*T) //Mass density of air in kg/m^3
A_o=%pi/4*d_o^2*10^-4 //Area of orifice in m^2
m_a=Cd*A_o*sqrt(2*deltaP_o*rho_a) //Air inhaled in kg/s
V_s=(%pi/4)*d^2*l*n*N/(2*60)*10^-6 //Swept volume in m^3/s
eta_vol=m_a/V_s //Volumetric efficiency
//Results:
printf("\n (a)Brake thermal efficiency, eta_bt = %.3f",eta_bt)
printf("\n (b)Brake mean effective pressure, bmep = %.3f bar",bmep*10^-5)
printf("\n (c)Volumetric efficiency, eta_vol = %.3f\n\n",eta_vol)
