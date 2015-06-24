clear ;
clc;
// Example 5.14
printf('Example 5.14\n\n');
printf('Page No. 137\n\n');

// given
T1 = 25;// Wet-bulb temperature in degree celcius
T2 = 40;//Dry-bulb temperature in degree celcius

//By using the humidity chart and steam tables for air-water mixtures at the given temperatures, the all following data can be obtained

//(a) humidity
w = 0.014;// in kg/kg
printf('the required humidity is %.3f kg/kg \n',w)


//(b) relative humidity
R_H = 30;// in percentage
printf('the required relative humidity in percentage is %.0f\n\n',R_H)

//(c) the dew point
T_w = 20;// in degree celcius
printf('the required dew-point temperature is %.0f deg C\n',T_w)

//(d) the humid heat
Cpa = 1.006*10^3;// Heat Capacity of bone dry air in J/kg-K
Cpwv = 1.89*10^3;// Heat Capacity of water vapour in J/kg-K
S = Cpa + (w*Cpwv);//in J/kg-K
printf('the humid heat is %.0f J/kg-K\n\n',S )

//(e) the humid volume
V_G = ((1/29)+(w/18))*22.41*((T2 + 273)/273);//in m^3/kg
printf('the humid volume is %.3f m^3/kg \n',V_G)

//(f) adiabatic process
w_A = 0.020;// in kg/kg
printf('the humidity of the mixture if saturated adiabatically is %.3f kg/kg \n\n',w_A)

// (h) isothermal process
w_i = 0.049;// in kg/kg
printf('the humidity of the mixture if saturated isothermally is %.3f kg/kg \n',w_i)


 
