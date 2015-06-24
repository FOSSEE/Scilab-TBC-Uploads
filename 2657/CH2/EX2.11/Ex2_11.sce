//Calculations on diesel cycle
clc,clear
//Given:
r=14 //Compression ratio
P1=1 //Pressure at 1 in bar
T1=27+273,T3=2500+273 //Temperature at 1 and 3 in K
//Solution:
//Refer fig 2.26
g=1.4 //Specific heat ratio(gamma)
T2=T1*(r)^(g-1) //Temperature at 2 in K
P2=P1*(T2/T1)^(g/(g-1)) //Pressure at 2 in bar
rho=T3/T2 //Cut off ratio
T3_T4=(r/rho)^(g-1) //Temperature ratio T3/T4
T4=round(T3/T3_T4) //Temperature at 4 in K
eta=1-((T4-T1)/(g*(T3-T2))) //Efficiency of diesel cycle
R=0.287,cp=1.005,cv=0.718 //Specific gas constant, heat capacities at constant pressure and volume in kJ/kgK
V1=R*T1*10^3/(P1*10^5) //Volume at 1 in m^3/kg
V_s=V1*(1-1/r) //Stroke volume in m^3/kg
mep=(cp*(T3-T2)-cv*(T4-T1))*10^3/(V_s*10^5) //Mean effective pressure in bar
//Results:
printf("\n The thermal efficiency of the diesel cycle, eta = %.1f percent",eta*100)
printf("\n The mean effective pressure of the cycle, pm = %.2f bar\n\n",mep)
