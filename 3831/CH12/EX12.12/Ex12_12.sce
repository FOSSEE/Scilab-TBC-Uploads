// Example 12_12
clc;funcprot(0);
// Given data
// State 1
T_DB1=25.0;// °C
phi_1=80.0/100;// The relative humidity
h_1=67;// kg/(kg da)
w_1=0.016;// kg H2O/(kg da)
// State 2
T_DB2=6.0;// °C
phi_2=100/100;// The relative humidity
h_2=21;// kg/(kg da)
h_f2=25.2;// kg/(kg da)
w_2=0.0056;// kg H2O/(kg da)
// State 3
T_DB3=20.0;// °C
phi_3=40/100;// The relative humidity
h_3=35;// kg/(kg da)
w_3=w_2;// kg H2O/(kg da)

// Calculation
// (a)
dw=w_1-w_2;// kg H2O/(kg dry air)
// (b)
Q_cbym_da=(h_2-h_1)+((w_1-w_2)*h_f2);// kJ/(kg dry air)
// (c)
Q_rbym_da=h_3-h_2;// kJ/(kg dry air)
printf("\n(a)The amount of water removed per unit mass of dry air,w_1-w_2=%0.3f kg H2O/(kg dry air) \n(b)The amount of cooling required per unit mass of dry air,Q_cooling/m_dry air=%2.1f kJ/(kg dry air) \n(c)The reheating heat transfer rate,Q_reheating/m_dry air=%2.0f kJ/(kg dry air)",dw,Q_cbym_da,Q_rbym_da);
