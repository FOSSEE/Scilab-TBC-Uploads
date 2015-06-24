//Supercharged diesel engine
clc,clear
//Given:
T1=10+273 //Temperature at sea level in K
P1=1.013 //Pressure at sea level in bar
bp=250 //Brake power in kW
eta_v=78 //Volumetric efficiency in percent
bsfc=0.245 //Brake specific fuel consumption in kg/kWh
A_F=17 //Air fuel ratio
N=1500 //Engine speed in rpm
h=2700 //Altitude in m
P_a=0.72 //Pressure at altitude in bar
p=8 //Percentage of gross power taken by the supercharger
T2=32+273 //Temperature of air leaving the supercharger in K
//Solution:
//Unsupercharged
m_f=bsfc*bp/60 //Fuel consumption in kg/min
m_a=A_F*m_f //Air consumption in kg/min
m_a=m_a/(N/2) //Air consumption per cycle in kg
m1=m_a/eta_v*100 //Mass of air corresponding to swept volume
R=0.287 //Specific gas constant in kJ/kgK
V_s=m1*R*T1/(P1*100) //Swept volume in m^3
bmep=bp/(V_s*N/(60*2)) //Brake mean effective pressure in kN/m^2
//Supercharged
bp2=bp/(1-p/100) //Gross power produced by the engine in kW
m_a2=bp2/bp*m_a //Mass of air required per cycle in kg
m2=m_a2/eta_v*100 //Mass of air corresponding to swept volume
P2=m2*R*T2/(V_s*100) //Pressure of air leaving the supercharger in bar
deltaP=P2-P_a //Increase in pressure required in bar
//Results:
printf("\n The required engine capacity, V_s = %.4f m^3",V_s)
printf("\n The anticipated brake mean effective pressure, bmep = %.1f bar",bmep/100)
printf("\n The increase of air pressure required at the supercharger = %.3f bar\n\n",deltaP)
