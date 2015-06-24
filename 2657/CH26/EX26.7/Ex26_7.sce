//Calculations on compound gas turbine
clc,clear
//Given:
r_p=4 //pressure ratio
eta_C=0.86,eta_HPT=0.84,eta_LPT=0.80 //Isentropic efficiencies of compressor and high and low pressure turbine in percent
e=70 //Effectiveness of heat exchanger in percent
eta_d=0.92 //Mechanical efficiency of drive to compressor
T4=660+273,T6=625+273 //Temperature of gases entering H.P. turbine and L.P. turbine in K
cp_a=1.005 //Specific heat of air in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
cp_g=1.15 //Specific heat of gas in kJ/kgK
g1=1.333 //Specific heat ratio(gamma) of gas
T1=15+273 //Atmospheric temperature in K
P1=1 //Atmospheric pressure in bar
//Solution:
//Refer fig 26.28, 26.29
P2=r_p*P1,P4=P2 //Pressure at 2, 4 in bar
T2!=T1*r_p^((g-1)/g) //Isentropic temperature at 2 in K
T2=(T2!-T1)/(eta_C)+T1 //Temperature at 2 in K
W_C=cp_a*(T2-T1) //Compressor work in kJ/kg
W_HPT=W_C/eta_d //Work done by H.P. turbine in kJ/kg
T5=T4-W_HPT/cp_g //Temperature at 5 in K
T5!=T4-(T4-T5)/(eta_HPT) //Isentropic temperature at 5 in K
P5=P4/(T4/T5!)^(g1/(g1-1)) //Pressure at 5 in bar
P6=P5,P7=P1 //Pressure at 6, 7 in bar
T7!=T6*(P7/P6)^((g1-1)/g1) //Isentropic temperature at 7 in K
T7=T6-eta_LPT*(T6-T7!) //Temperature at 7 in K
W_LPT=cp_g*(T6-T7) //Work done by L.P. turbine in kJ/kg
T3=poly(0,'T3') //Defining temperature at 3 as a unknown in K
e1=(cp_a*(T3-T2))/(cp_g*(T7-T2)) //Effectiveness in terms of T3
//Effectiveness from the relation must be equal to the given effectiveness
//Thus their difference must be zero
T3=roots(e1-e/100) //Temperature at 3 in K
W=cp_g*(T6-T7) //Work output in kJ/kg (error in book)
Q1=cp_g*(T4-T3)+cp_g*(T6-T5) //Heat added in kJ/kg
eta=W/Q1 //Cycle efficiency
//Results:
printf("\n The pressure of the gas entering L.P.T., P6 = %.2f bar",P6)
printf("\n The net specific power, W = %.2f kW/kg/s",W)
printf("\n The overall efficiency, eta = %.4f\n\n",eta)
//Answer is wrong in book
