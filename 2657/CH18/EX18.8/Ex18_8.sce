//Calculations on six cylinder diesel engine
clc,clear
//Given:
n=6 //Number of cylinders
function bp=f(W),bp=W*N/20000,endfunction //Power law of engine
d=95,l=120 //Bore and stroke in mm
N=2400 //Engine speed in rpm
C_H=83/17 //Carbon Hydrogen ratio by mass in fuel
d_o=30 //Diameter of orifice in mm
Cd=0.6 //Orifice coefficient of discharge
P=550 //Net load on brake in N
P1=750 //Ambient pressure in mm of Hg
T1=25+273 //Ambient temperature in K
deltaP_o=14.5 //Head over orifice in cm of Hg
s=0.831 //Specific gravity of fuel
t=19.3 //Time to use 100 cc fuel in s
V_f=100 //Volume of fuel used in t seconds in cc
//Solution:
//(a)
bp=f(P) //Brake power at brake load in kW
A=%pi/4*d^2*10^-6 //Area of cylinder in m^2
bmep=bp*1000/(n*l/1000*A*N/(2*60)) //Brake mean effective pressure in Pascal
//(b)
T=bp*1000/(2*%pi*(N/60)) //Brake torque in Nm
//(c)
rho_f=s*1000 //Fuel density in kg/m^3
m_f=V_f*10^-6/t*3600*rho_f //Fuel flow rate in kg/hr
bsfc=m_f/bp //Brake specific fuel consumption in kg/kWh
//(e)
R=0.287 //Specific gas constant in kJ/kgK
P1=P1/760*1.01325 //Ambient pressure in bar
rho_a=P1*10^5/(R*10^3*T1) //Mass density of air in kg/m^3
deltaP_o=13.6*1000*9.81*deltaP_o/100 //Pressure drop across orifice in N/m^2
A_o=%pi/4*d_o^2*10^-6 //Area of orifice in m^2
V_a=Cd*A_o*sqrt(2*deltaP_o/rho_a) //Air inhaled in m^3/s
V_s=(%pi/4)*d^2*l*n*N/(2*60)*10^-9 //Swept volume in m^3/s
eta_vol=V_a/V_s //Volumetric efficiency
//(d)
pH=17,pC=pH*C_H //Percentage of Hydrogen and Carbon in fuel
pO=23.3 //Percentage of Oxygen in air
H=1,C=12,O=16 //Atomic masses of Hydrogen, Carbon, Oxygen in gm
mO2=pC/100*(2*O/C)+pH/100*(O/(2*H)) //Oxygen required in kg/kg of fuel
m_a=mO2/(pO/100) //Mass of air in kg/kg of fuel
A_F_t=m_a //Theoritical air fuel ratio
m_a_act=V_a*rho_a //Actual air mass flow rate in kg/s
A_F_act=m_a_act/m_f*3600 //Actual air fuel ratio
P_e=(A_F_act-A_F_t)/A_F_t*100 //Percentage excess air
//Results:
printf("\n (a)The brake mean effective pressure, bmep = %.3f bar",bmep*10^-5)
printf("\n (b)The brake torque, T = %.1f Nm",T)
printf("\n (c)The brake specific fuel consumption, bsfc = %.3f kg/kWh",bsfc)
printf("\n (d)The percentage excess air = %.1f percent",P_e)
printf("\n (e)The volumetric efficiency, eta_vol = %.1f percent\n\n",eta_vol*100)
