//Calculations on Joule cycle
clc,clear
//Given:
T1=25+273,T3=825+273 //Minimum and maximum temperature in K
r_p=4.5 //pressure ratio
eta_C=85,eta_T=90 //Isentropic efficiencies of compressor and turbine in percent
P=1300 //Power rating of the turbine in kW
cp=1.005 //Specific heat in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 26.23
T2!=T1*r_p^((g-1)/g) //Isentropic temperature at 2 in K
T2=(T2!-T1)/(eta_C/100)+T1 //Temperature at 2 in K
T4!=T3/r_p^((g-1)/g) //Isentropic temperature at 4 in K
T4=T3-eta_T/100*(T3-T4!) //Temperature at 4 in K
W_C=cp*(T2-T1) //Compressor work in kJ/kg
W_T=cp*(T3-T4) //Turbine work in kJ/kg
Q1=cp*(T3-T2) //Heat added in kJ/kg
W=W_T-W_C //Work output in kJ/kg (Round off error)
eta=W/Q1 //Cycle efficiency
r_w=W/W_T //Work ratio
HR=3600/(eta) //Heat rate in kJ/kWh (Round off error)
m=P/W //Mass flow rate in kg/s
//Results:
printf("\n The specific work output, W = %d kJ/kg",W)
printf("\n The cycle efficiency, eta = %.1f percent",eta*100)
printf("\n The work ratio, rw = %.3f",r_w)
printf("\n The heat rate = %d kJ/kWh",HR)
printf("\n The mass flow rate for 1300 kW, m = %.2f kg/s\n\n",m)
//Round off error in the values of 'W' and 'HR'
