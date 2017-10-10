// Example 12_6
clc;funcprot(0);
// Given data
T=25.0;// °C
p_m=.101*10^3;// MPa
phi=56.8/100;// The relative humidity

// Calculation
// (a)
// From Table C.1b, we find that
p_sat=0.003169;// MPa
p_w=phi*p_sat*10^3;// kPa
// (b)
// From Dalton’s law for partial pressure, we can find the partial pressure of the dry air in the mixture as
p_a=p_m-p_w;// kPa
w=0.622*(p_w/p_a);// kg H2O per kg of dry air
// (c)
// Using Eq. (12.27) and Table C.2b, we find the dew point temperature to be
T_sat=15.8;// °C
T_DP=T_sat;// °C
printf("\n(a)The partial pressure of the water vapor in the atmosphere,p_w=%1.2f kPa \n(b)The humidity ratio of the atmosphere,w=%0.4f kg H2O per kg of dry air \n(c)The dew point temperature of the atmosphere,T_DP=%2.1f°C",p_w,w,T_DP);
