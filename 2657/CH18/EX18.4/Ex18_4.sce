//Calculations on oil engine
clc,clear
//Given:
n=4 //Number of cylinders
d_o=5 //Diameter of orifice in cm
Cd=0.6 //Coefficient of discharge for orifice
d=10.5,l=12.5 //Bore and stroke in cm
N=1200 //Engine speed in rpm
T=147 //Brake torque delivered in Nm
m_f=5.5 //Fuel consumption in kg/hr
CV=43100 //Calorific value in kJ/kg
deltaP_o=5.7 //Head across orifice in cm of water
P1=1.013 //Atmospheric pressure in bar
T1=20+273 //Atmospheric temperature in K
g=9.81 //Accelaration due to gravity in m/s^2
//Solution:
//(a)
bp=2*%pi*N/60*T*10^-3 //Brake power in kW
eta_bt=bp*3600/(m_f*CV) //Brake thermal efficiency
//(b)
A=%pi/4*d^2*10^-4 //Area of cylinder in m^2
bmep=bp*1000/(n*l/100*A*N/(2*60)) //Brake mean effective pressure in N/m^2
//(c)
rho_w=1000 //Mass density of water in kg/m^3
deltaP_o=rho_w*g*deltaP_o/100 //Pressure drop across orifice in N/m^2
R=0.287 //Specific gas constant in kJ/kgK
rho_a=P1*10^5/(R*10^3*T1) //Mass density of air in kg/m^3
rho_a=round(10*rho_a)/10
A_o=%pi/4*d_o^2*10^-4 //Area of orifice in m^2
V_a=Cd*A_o*sqrt(2*deltaP_o/rho_a) //Air inhaled in m^3/s
V_s=(%pi/4)*d^2*l*n*N/(2*60)*10^-6 //Swept volume in m^3/s
eta_vol=V_a/V_s //Volumetric efficiency
//Results:
printf("\n (a)Brake thermal efficiency, eta_bt = %.1f percent",eta_bt*100)
printf("\n (b)Brake mean effective pressure, bmep = %.2f bar",bmep*10^-5)
printf("\n (c)Volumetric efficiency, eta_vol = %.1f percent\n\n",eta_vol*100)
