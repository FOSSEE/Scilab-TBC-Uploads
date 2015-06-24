//Calculations for comparision of Otto cycle and Diesel cycle
clc,clear
//Given:
n=6 //Number of cylinders
V_s=300 //Engine swept volume in cm^3 per cylinder
r=10 //Compression ratio
N=3500 //Engine speed in rpm
bp=75 //Brake power in kW
P1=1 //Pressure at 1 in bar
T1=15+273 //Temperature at 1 in K (misprint)
cv=0.718 //Specific heat at constant volume in kJ/kgK
cp=1.005 //Specific heat at constant pressure in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.32
//Otto cycle
eta_o=1-1/r^(g-1) //Cycle efficiency
Q1=bp/eta_o //Rate of heat addition in kW
P_o=bp/n //Power output per cylinder in kW
W_o=P_o/(N/(2*60)) //Work output per cycle per cylinder in kJ
mep_o=W_o/V_s*10^6/100 //Mean effective pressure in bar
T2=T1*r^(g-1) //Temperature at 2 in K
Q1=Q1/(n*N/(2*60)) //Heat supplied per cycle per cylinder in kJ
R=0.287 //Specific gas constant in kJ/kgK
v1=R*T1/(P1*100) //Volume of air in m^3/kg
V1=V_s/(1-1/r)*10^-6 //Volume at 1 in m^3
m=V1/v1 //Mass of the air in kg
T3=T2+Q1/(m*cv) //Temperature at 3 in K
//Diesel cycle
T3!=T2+Q1/(m*cp) //Temperature at 3 in diesel cycle in K
rho=T3!/T2 //Cut off ratio for diesel cycle
eta_d=1-((rho^g-1)/(r^(g-1)*g*(rho-1))) //The air standard efficiency
Power=eta_d*bp/(eta_o) //Power output in kW
P_d=Power/n //Power output per cylinder in kW
W_d=P_d/(N/(2*60)) //Work output per cycle per cylinder in kJ
mep_d=W_d/V_s*10^6/100 //Mean effective pressure in bar
//Results:
printf("\n The rate of heat addition same for both Petrol and Diesel engine, Q1 = %.1f kW",bp/eta_o)
printf("\n For Petrol engine\n\t Cycle efficiency, eta = %.3f\n\t Mean effective pressure, mep = %.2f bar\n\t The maximum temperature of the cycle, Tmax = %.0f K",eta_o,mep_o,T3)
printf("\n For Diesel engine\n\t Cycle efficiency, eta = %.2f\n\t Mean effective pressure, mep = %.2f bar\n\t The maximum temperature of the cycle, Tmax = %.0f K\n\t Power output = %.1f kW",eta_d,mep_d,T3!,Power)
