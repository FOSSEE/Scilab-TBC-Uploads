//Calculations on Brayton cycle
clc,clear
//Given:
P1=101.325 //Pressure at the beginning(1) in kPa
T1=27+273 //Temperature at the beginning(1) in K
r_p=6 //pressure ratio
g=1.4 //Specific heat ratio(gamma)
cp=1.005 //Specific heat in kJ/kgK
W_TC=2.5 //Ratio of Turbine work and compressor work
m=1 //Assume mass in kg
//Solution:
//Refer fig 26.22
T2=T1*r_p^((g-1)/g) //Temperature at 2 in K
T3=poly(0,'T3') //Defining temperature at 3 as a unknown in K
T4=T3/r_p^((g-1)/g) //Defining temperature at 4 in terms of T3 in K
W_C=m*cp*(T2-T1) //Compressor work in kJ
W_T=m*cp*(T3-T4) //Turbine work in kJ
T3=roots(W_T-W_TC*W_C) //Temperature at 3 in K
T4=horner(T4,T3) //Temperature at 4 in K
eta=((T3-T4)-(T2-T1))/(T3-T2) //Cycle efficiency
//Results:
printf("\n The maximum temperature in the cycle, T3 = %.1f K",T3)
printf("\n The cycle efficiency, eta = %.2f percent\n\n",eta*100)
