clear
// Variable declaration
T=5//  The dry bulb temperature in 
R=3.6// The rate of air change per day
V=35000// The store volume in m**3
v_spa=0.8// The specific volume in m**3/kg
q=600// m**3/h
n=2// The number of two pellet truck doors
h_1=15.9// kJ/kg
h_2=-24.3// kJ/kg
T_1=20// °C
T_2=-25// °C
t=24// Time duration for one day in hours
t_s=24*60*60// Time duration for one day in seconds

// Calculation
R_woh=V*R/v_spa// The rate of air change without dehumidification in kg/day
Q_woh=R_woh*(h_1-h_2)/t_s// The cooling load without dehumidification in kW
R_wh=q*n*t/v_spa// The rate of air change with dehumidification in kg/day
Q_wh=R_wh*(T_1-T_2)/t_s// The cooling load with dehumidification in kW
printf("\n \nThe rate of air change without dehumidification is %5.0f kg/day. \nThe cooling load without dehumidification %2.1f kW(calculation error).",R_woh,Q_woh)

printf("\n \nThe rate of air change with dehumidification is %5.0f kg/day. \nThe cooling load with dehumidification %2.2f kW.",R_wh,Q_wh)

