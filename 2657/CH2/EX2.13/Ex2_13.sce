//Calculations on diesel cycle
clc,clear
//Given:
r=18 //Compression ratio
p=10 //percentage of stroke at which constant pressure process ends
P1=1,T1=20+273 //Pressure and temperature at 1 in bar and K
V_a=100 //Volume of air used per hour in m^3/hr
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.27
//Calculation of cut off ratio (rho)
V_c=1 //Assume clearance volume in unit
V_s=r-V_c //Swept volume in unit
V3=V_c+V_s*p/100 //Volume at constant pressure process ends or point 3 in unit
V2=V_c //Volume at constant pressure process starts or point 2 in unit
rho=V3/V2 //Cut off ratio
eta=1-((rho^g-1)/(r^(g-1)*g*(rho-1))) //Thermal efficiency
P2=P1*(r)^g //Pressure at 2(maximum) in bar (printing error)
P3=P2 //Constant pressure process, pressure at 3 in bar
T2=T1*(r)^(g-1) //Temperature at 2 in K
T3=T2*rho //Temperature at 3(maximum) in K
//Consider the cycle for 100 m^3 of swept volume with air, thus
V_s=V_a //Swept volume in m^3/hr
V2=V_s/(r-1) //Volume at 2 in m^3/hr
V1=V_s+V2 //Volume at 1 in m^3/hr
V3=rho*V2 //Volume at 3 in m^3/hr
V4=V1 //Constant volume process, volume at 4 in m^2
P4=P3*(V3/V4)^g //Pressure at 4 in bar
W=(P2*(V3-V2)+((P3*V3-P4*V4)-(P2*V2-P1*V1))/(g-1))*10^5 //Work done in cycle in Nm
ip=W/3600
//Results:
printf("\n (a)The maximum temperature, T3 = %d degreeC and the maximum pressure, P2 = %.1f bar",T3-273,P2)
printf("\n (b)The thermal efficiency of the engine, eta = %d percent",eta*100)
printf("\n (c)The indicated power of the engine, ip = %.2f kW\n\n",ip/1000)
//Answers in the book are wrong
