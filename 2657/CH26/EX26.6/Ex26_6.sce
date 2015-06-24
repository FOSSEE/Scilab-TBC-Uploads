//Calculations on gas turbine with heat exchanger
clc,clear
//Given:
T1=17+273 //Temperature at entering in K
P1=1 //Pressure at entering of compressor in bar
r_p=4.5 //pressure ratio
W=4000 //Work output in kW
m=40 //Mass flow rate in kg/s
e=0.6 //Thermal ratio or effectiveness of heat exchanger
eta_C=84 //Isentropic efficiency of compressor in percent
eta=0.29 //Thermal efficiency
cp_a=1.005 //Specific heat of air in kJ/kgK
g=1.4 //Specific heat ratio(gamma) of air
cp_g=1.07 //Specific heat of gas in kJ/kgK
g1=1.365 //Specific heat ratio(gamma) of gas
//Solution:
//Refer fig 26.27
T2!=T1*r_p^((g-1)/g) //Isentropic temperature at 2 in K
T2=(T2!-T1)/(eta_C/100)+T1 //Temperature at 2 in K
W=W/m //Specific work output in kJ/kg
Q1=W/eta //Heat added in kJ/kg
W_C=cp_a*(T2-T1) //Compressor work in kJ/kg
W_T=W+W_C //Turbine work in kJ/kg
function y=f(T4)
    T3=T4-Q1/cp_g //Defining temperature at 3 in terms of T4 in K
    T5=T4-W_T/cp_g //Defining temperature at 5 in terms of T4 in K
    y=(cp_a*(T3-T2))/(cp_g*(T5-T2))-e
endfunction
//Since effectiveness from the relation must be equal to the given effectiveness
//Thus their difference must be equal to Zero, thus function, f solve for zero to get the value of variable(T4)
T4=fsolve(1000,f) //Temperature at 4 in K
T5=T4-W_T/cp_g //Temperature at 5 in K
T5!=T4/r_p^((g1-1)/g1) //Isentropic temperature at 5 in K
eta_T=(T4-T5)/(T4-T5!) //Isentropic efficiency of turbine
//Results:
printf("\n The isentropic efficiency of the gas turbine, eta_T = %.1f percent\n\n",eta_T*100)
