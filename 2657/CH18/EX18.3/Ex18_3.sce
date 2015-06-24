//Calculations on oil engine
clc,clear
//Given:
d=18,l=36 //Bore and stroke in cm
N=285 //Average engine speed in rpm
T=393 //Brake torque delivered in Nm
imep=7.2 //Indicated mean effective pressure in bar
m_f=3.5 //Fuel consumption in kg/hr
m_w=4.5 //Mass of cooling water used in kg/min
deltaT_w=36 //Cooling water temperature rise in degreeC
A_F=25 //Air-fuel ratio
T2=415+273 //Exhaust gas temperature in K
P=1.013 //Atmospheric pressure in bar
T1=21+273 //Room temperature in K
CV=45200 //Calorific value in kJ/kg
p=15 //Perentage of hydrogen contained by the fuel
R=0.287 //Specific gas constant in kJ/kgK
cv=1.005,cp=2.05 //Specific heat for dry exhaust gases and superheated steam in kJ/kgK
//Solution:
//(a)
ip=imep*10^2*l*%pi/4*d^2*N/(2*60)*10^-6 //Indicated power in kW
ip=round(10*ip)/10
eta_it=ip*3600/(m_f*CV) //Indicated thermal efficiency
//(b)
m_a=m_f*A_F/60 //Mass of air inhaled in kg/min
m_a=round(100*m_a)/100
V_a=m_a*R*T1/(P*100) //Volume of air inhaled in m^3/min
V_s=(%pi/4)*d^2*l*10^-6*N/2 //Swept volume in m^3/min
eta_vol=V_a/V_s //Volumetric efficiency
//Heat balance sheet
Q1=m_f/60*CV //Heat input in kJ/min
bp=2*%pi*N/60*T*10^-3 //Brake power in W
Q_bp=bp*60 //Heat equivalent to brake power in kJ/min
cp_w=4.1868 //Specific heat of water in kJ/kgK
Q_w=m_w*cp_w*deltaT_w //Heat in cooling water in kJ/min
m_e=m_a+m_f/60 //Mass of exhaust gases in kg/min
//Since, 2 mole of hydrogen gives 1 mole of water on combine with 1 mole of oxygen
//Thus, 1 mole of hydrogen gives 1/2 mole or 9 unit mass of water
m_h=m_f/60*p/100 //Mass of hydrogen in kg/min
m_s=9*m_h //Mass of steam in exhaust gases in kg/min
m_d=m_e-m_s //Mass of dry exhaust gases in kg/min
Q_d=m_d*cv*(T2-T1) //Heat in dry exhaust gases in kJ/min
lv=2256.9 //Latent heat of vapourisation of water in kJ/kg
Q_s=m_s*((373-T1)+lv+cp*(T2-373)) //Heat in steam in exhaust gases in kJ/min
Q_r=Q1-Q_bp-Q_w-Q_d-Q_s //Heat in radiation in kJ/min
//Results:
printf("\n (a)The indicated thermal efficiency, eta_it = %.1f percent",eta_it*100)
printf("\n (b)The volumetric efficiency, eta_vol = %.1f percent",eta_vol*100)
printf("\n\n   Heat balance sheet\n\t Heat input = %.1f kJ/min, %d percent",Q1,Q1/Q1*100)
printf("\n\t Heat equivalent to b.p. = %.1f kJ/min, %.1f percent",Q_bp,Q_bp/Q1*100)
printf("\n\t Heat in cooling water = %.1f kJ/min, %.1f percent",Q_w,Q_w/Q1*100)
printf("\n\t Heat in dry exhaust gases = %.1f kJ/min, %.1f percent",Q_d,Q_d/Q1*100)
printf("\n\t Heat in steam in exhaust gases = %.1f kJ/min, %.1f percent",Q_s,Q_s/Q1*100)
printf("\n\t Heat in radiation = %.1f kJ/min, %.1f percent",Q_r,Q_r/Q1*100)
