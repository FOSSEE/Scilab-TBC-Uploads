//Calculations on two stroke engine
clc,clear
//Given:
N=450 //Engine speed in rpm
P=450 //Net load on brake in N
imep=2.9 //Indicated mean effective pressure in bar
m_f=5.4 //Fuel consumption in kg/h
deltaT_w=36.1 //Cooling water temperature rise in degreeC
m_w=440 //Mass of cooling water used in kg/h
A_F=31 //Air-fuel ratio
T1_g=20+273,T2_g=355+273 //Inlet and outlet temperature of exhaust gases blown in K
P1=76 //Atmospheric pressure in cm of Hg
d=22,l=27 //Bore and stroke in cm
D_b=1.5 //Effective diameter of the brake wheel in m
CV=44000 //Calorific value in kJ/kg
p=15 //Percentage of hydrogen by mass contained by the fuel
R=0.287 //Specific gas constant in kJ/kgK
cp_g=1.005,cp_s=2.05 //Specific heat for dry exhaust gases and superheated steam in kJ/kgK
//Solution:
ip=imep*10^2*l*%pi/4*d^2*N/(60)*10^-6 //Indicated power in kW
eta_it=ip*3600/(m_f*CV) //Indicated thermal efficiency
bp=2*%pi*N/60*(P*D_b/2)*10^-3 //Brake power in kW
bp=round(10*bp)/10
bsfc=m_f/bp*1000 //Brake specific fuel consumption in gm/kWh
V_s=(%pi/4)*d^2*l*10^-6*N //Swept volume in m^3/min
m_a=m_f*A_F/60 //Mass of air inhaled in kg/min
P1=1.0132 //Atmospheric pressure equivalent to 76 cm of Hg in bar
T1=293 //Atmospheric temperature in K
V_a=m_a*R*T1/(P1*100) //Volume of air inhaled in m^3/min
V_a=round(100*V_a)/100
eta_vol=V_a/V_s //Volumetric efficiency
//Heat balance sheet
Q1=m_f/60*CV //Heat input in kJ/min
Q_bp=bp*60 //Heat equivalent to brake power in kJ/min
cp_w=4.1868 //Specfic heat of water in kJ/kgK
Q_w=m_w/60*cp_w*deltaT_w //Heat in cooling water in kJ/min
m_e=m_a+m_f/60 //Mass of exhaust gases in kg/min
//Since, 2 mole of hydrogen gives 1 mole of water on combine with 1 mole of oxygen
//Thus, 1 mole of hydrogen gives 1/2 mole or 9 unit mass of water
m_h=m_f/60*p/100 //Mass of hydrogen in kg/min
m_s=9*m_h //Mass of steam in exhaust gases in kg/min
m_d=m_e-m_s //Mass of dry exhaust gases in kg/min
Q_d=m_d*cp_g*(T2_g-T1_g) //Heat in dry exhaust gases kJ/min
lv=2256.9 //Latent heat of vapourisation of water in kJ/kg
Q_s=m_s*((373-T1_g)+lv+cp_s*(T2_g-373)) //Heat in steam in exhaust gases in kJ/min
Q_r=Q1-Q_bp-Q_w-Q_d-Q_s //Heat in radiation in kJ/min
//Results:
printf("\n (a)The indicated thermal efficiency, eta_it = %.1f percent",eta_it*100)
printf("\n (b)Brake specific fuel consumption = %.1f gm/kWh",bsfc)
printf("\n (c)The volumetric efficiency, eta_vol = %.1f percent",eta_vol*100)
printf("\n\n   Heat balance sheet\n\t Heat input = %.1f kJ/min, %d percent",Q1,Q1/Q1*100)
printf("\n\t Heat equivalent to b.p. = %.1f kJ/min, %.1f percent",Q_bp,Q_bp/Q1*100)
printf("\n\t Heat in cooling water = %.1f kJ/min, %.1f percent",Q_w,Q_w/Q1*100)
printf("\n\t Heat in dry exhaust gases = %.1f kJ/min, %.1f percent",Q_d,Q_d/Q1*100)
printf("\n\t Heat in steam in exhaust gases = %.1f kJ/min, %.1f percent",Q_s,Q_s/Q1*100)
printf("\n\t Heat in radiation = %.1f kJ/min, %.1f percent",Q_r,Q_r/Q1*100)
