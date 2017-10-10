clear
// Variable declaration
T_d1=23// The dry bulb temperature in °C
T_w=5// The temperature of water in °C
H=50//  % saturation
n_s=0.7// Saturation efficiency in %
x_a=0.0089// Moisture content in kg/kg
x_b=0.0054// Moisture content in kg/kg

// Calculation
//(a)
printf("\n (a) By construction on the chart ( Figure 21.7 ), the final condition is 10.4°C dry bulb,82 percents saturation")

//(b)
T_d2=T_d1-(n_s*(T_d1-T_w))// The final dry bulb temperature in °C
x_f=x_a-(n_s*(x_a-x_b))// kg/kg
printf("\n \n(b)The final condition,\n   The final dry bulb temperature=%2.1f°C \n   The moisture content=%0.5f kg/kg",T_d2,x_f)

