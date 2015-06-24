//Calculations on 2 stroke IC engine
clc,clear
//Given:
n=2 //Number of cylinders
N=4000 //Angular speed of engine in rpm
eta_v=0.77 //Volumetric efficiency
eta_m=0.75 //Mechanical efficiency
V_f=10 //Fuel consumption in l/hr
s=0.73 //Specific gravity
h=10500 //Enthalpy of fuel in kcal/kg
A_F=18 //Air-fuel ratio
v_p=600 //Speed of piston in m/min
imep=5 //Indicated mean effective pressure in atm 
T=298,P=1.013 //Standard temperature and pressure in K and bar
//Solution:
R=0.287 //Specific gas constant in kJ/kgK
m_f=V_f*s //Fuel consumption in kg/hr
m_a=A_F*m_f //Air consumption in kg/hr
m_c=m_f+m_a //Mass of total charge in kg/hr
m=round(m_c/eta_v) //Mass of charge corresponding to the swept volume in kg/hr
V=(m/2)*R*T/(P*100) //Volume of charge consumed in m^3/hr
V_s=V*10^6/(60*N) //Swept volume by piston per stroke in cc
L=v_p*100/(2*N) //Stroke length of cylinder in cm
d=sqrt(4*V_s/(%pi*L)) //Bore of cylinder in cm
IHP=round(imep*V_s*N*n/450000) //Indicated horse power in metric HP
BHP=IHP*eta_m //Brake horse power in metric HP
eta_t=BHP*736*3600/(V_f*s*h*4187) //Thermal efficiency
//Results:
printf("\n The engine dimensions\n\t Stroke length, L = %.1f cm\n\t Bore, d = %.1f cm",L,d)
printf("\n The brake power output, BHP = %.1f metric HP",BHP)
printf("\n The thermal efficiency, eta_t = %.1f percent\n\n",eta_t*100)
