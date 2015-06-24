//Calculations on automotive gas turbine
clc,clear
//Given:
r_p=6 //pressure ratio
e=65 //Effectiveness of heat exchanger in percent
T5=800+273,T1=15+273 //Inlet temperature to H.P. turbine and L.P. compressor in K
m=0.7 //Mass flow rate in kg/s
eta_C=0.8,eta_HPT=0.85,eta_LPT=0.85 //Isentropic efficiency of compressor and high and low pressure turbine in percent
eta_d=98 //Mechanical efficiency to drive compressor in percent
eta_c=97 //Combustion efficiency in percent
CV=42600 //Calorific value of fuel in kJ/kg
cp=1.005 //Assume specific heat in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 26.30, 26.31
P1=1 //Atmospheric pressure in bar
P3=r_p*P1,P5=P3,P7=P1 //Pressure at 3, 5, 7 in bar
T3!=T1*r_p^((g-1)/g) //Isentropic temperature at 3 in K
T3!=round(T3!*10)/10
T3=(T3!-T1)/(eta_C)+T1 //Temperature at 3 in K
W_C=m*cp*(T3-T1) //Compressor work in kW
W_HPT=W_C*100/eta_d //Work done by H.P. turbine in kW
T6=T5-W_HPT/(m*cp) //Temperature at 6 in K
T6!=T5-(T5-T6)/(eta_HPT) //Isentropic temperature at 6 in K
P6=P5/(T5/T6!)^(g/(g-1)) //Pressure at 6 in bar
T7!=T6*(P7/P6)^((g-1)/g) //Isentropic temperature at 7 in K
T7=T6-eta_LPT*(T6-T7!) //Temperature at 7 in K
W=m*cp*(T6-T7) //Net power developed in kW
T4=e/100*(T7-T3)+T3 //Temperature at 4 in K
Q1=m*cp*(T5-T4)*100/eta_c //Heat supplied in kJ/s
eta=W/Q1 //Overall thermal efficiency
sfc=Q1*3600/(CV*W) //Specific fuel consumption in kg/kWh
//Results:
printf("\n (a)The net power developed, W = %.2f kW",W)
printf("\n (b)The overall thermal efficiency, eta = %.1f percent",eta*100)
printf("\n (c)The specific fuel consumption, sfc = %.3f kg/kWh\n\n",sfc)
