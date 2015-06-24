//Calculations on gas turbine
clc,clear
//Given:
P1=1,P2=6 //Pressure at entering and leaving of compressor in bar
T1=27+273 //Temperature at entering in K
T3=700+273 //Maximum temperature in K
eta_C=0.80,eta_T=0.85 //Isentropic efficiencies of compressor and turbine in percent
eta_c=0.98 //Combustion efficiency in percent
P3=P2-0.1 //Pressure at 3 after falling 0.1 bar in bar
cp_a=1.005 //Specific heat of air in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
cp_g=1.147 //Specific heat of gas in kJ/kgK
g1=1.333 //Specific heat ratio(gamma) of gas
CV=42700 //Calorific value of fuel in kJ/kg
//Solution:
//Refer fig 26.25
T2!=T1*(P2/P1)^((g-1)/g) //Isentropic temperature at 2 in K
T2=(T2!-T1)/(eta_C)+T1 //Temperature at 2 in K
T4!=T3/(P3/P1)^((g1-1)/g1) //Isentropic temperature at 4 in K
T4=T3-eta_T*(T3-T4!) //Temperature at 4 in K
W_C=cp_a*(T2-T1) //Compressor work in kJ/kg
W_T=cp_g*(T3-T4) //Turbine work in kJ/kg
W=W_T-W_C //Work output in kJ/kg
Q1=cp_g*(T3-T2)/eta_c //Heat added in kJ/kg
eta=W/Q1 //Cycle efficiency
r_w=W/W_T //Work ratio
AR=round(3600/W) //Air rate in kg/kWh
sfc=Q1*AR/CV //Specific fuel consumption in kg/kWh
A_F=AR/sfc //Air fuel ratio
//Results:
printf("\n (a)The thermal efficiency, eta = %.1f percent",eta*100)
printf("\n (b)The work ratio, rw = %.3f",r_w)
printf("\n (e)The air rate = %d kg/kWh",AR)
printf("\n (d)The specific fuel consumption, sfc = %.3f kg/kWh",sfc)
printf("\n (c)The air fuel ratio = %.1f\n\n",A_F)
