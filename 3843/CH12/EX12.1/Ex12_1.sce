// Example 12_1
clc;funcprot(0);
// Given data
AF_act=20;// The air-fuel ratio
// The reaction equation for theoretical air is C_4H_10+6.5(O_2+3.76N_2)-->4CO_2+5H_2O+24.44N_2
a=6.5;// Constant
M_air=29;// kg/kmol
M_fuel=58;// kg/kmol
P_atm=100;// kPa

// Calculation
m_air=a*(4.76)*M_air;// kg air
m_fuel=1*M_fuel;// kg fuel
// (a)
AF_th=m_air/m_fuel;// The theoretical air-fuel ratio
P_ea=((AF_act-AF_th)/AF_th)*100;// % excess air
// (b)
// The reaction equation with 129.28% theoretical air is C_4H_10+(6.5)(1.2928)(O_2+3.76N_2)-->4CO_2+5H_2O+1.903O_2+31.64N_2
N_CO2=4;// mol
N=42;// mol
P_CO2=(N_CO2/N)*100;// The volume percentage of CO_2 in the products in %
// (c)
N_H2O=5;// mol
N=42.5;// mol
y_H2O=N_H2O/N;// The mole fraction
P_v=y_H2O*P_atm;// The partial pressure of the water vapor in kPa
// Using Table C-2
T_dp=49;// °C
printf("\n(a)The percent excess air=%2.2f percentage \n(b)The volume percentage of CO_2 in the products=%1.2f percentage \n(c)The dew point temperature of the products,T_dp=%2.0f °C",P_ea,P_CO2,T_dp);
