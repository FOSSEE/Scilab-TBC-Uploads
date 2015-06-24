//Calculations for zero efficiency
clc,clear
//Given:
T1=25+273,T3=750+273 //Minimum and maximum temperature in K
r_p=4 //pressure ratio
eta_C=75 //Isentropic efficiency of compressor in percent
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 26.24
T2!=T1*r_p^((g-1)/g) //Isentropic temperature at 2 in K
T2=(T2!-T1)/(eta_C/100)+T1 //Temperature at 2 in K
T4!=T3/r_p^((g-1)/g) //Isentropic temperature at 4 in K
//For zero efficiency of the cycle (T3-T4) = (T2-T1)
eta_T=(T2-T1)/(T3-T4!) //Turbine efficiency
//Results:
printf("\n The turbine efficiency for zero cycle efficiency, eta_T = %.1f percent\n\n",eta_T*100)
