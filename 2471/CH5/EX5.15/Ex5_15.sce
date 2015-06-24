clear ;
clc;
// Example 5.15
printf('Example 5.15\n\n');
printf('Page No. 137\n\n');

// given
T = 25;// Wet-bulb temperature in degree celcius
T1 = 30;//Dry-bulb temperature in degree celcius
V = 5;// Volumetric flow rate of initial air-water mixture in m^3/s
T2 = 70;// Final Dry-bulb temperature in degree celcius

//By using the humidity chart and steam tables for air-water mixtures at the given temperatures, the all following data can be obtained
w = 0.018;// humidity at 25/30 degree celcius in kg/kg
Cpa_1 = 1.00*10^3;// Heat Capacity of bone dry air at 30 degree celcius in J/kg-K
Cpwv_1 = 1.88*10^3;// Heat Capacity of water vapour  at 30 degree celcius in J/kg-K
Cpa_2 = 1.008*10^3;// Heat Capacity of bone dry air at 70 degree celcius in J/kg-K
Cpwv_2 = 1.93*10^3;// Heat Capacity of water vapour at 70 degree celcius in J/kg-K
lo = 2.50*10^6;//  Specifc Latent heat of vapourisation  of water at 0 degree celcius in J/kg

S_1 = Cpa_1 + (w*Cpwv_1);// the humid heat at 30 degree celcius in J/kg-K
S_2 = Cpa_2 + (w*Cpwv_2);//the humid heat at 70 degree celcius in J/kg-K

hG_1 = ((S_1*T1) + (w*lo));//the specific enthalpy at 30 degree celcius in J/kg
hG_2 = ((S_2*T2) + (w*lo));//the specific enthalpy at 70 degree celcius in J/kg
VG_1 = ((1/29)+(w/18))*22.41*((T1 + 273)/273);// Humid volume at 30 degree celcius in m^3/kg
m = V/VG_1;// Mass flow rate in kg/s
Q = m*(hG_2 - hG_1);// in Watts
printf('The required heat is %3.2f W \n',Q)// Deviation in answer is due to some approximation in calculation in the book

w_2 = w;// given in the question
VG_2 = ((1/29)+(w_2/18))*22.41*((T2 + 273)/273);// Humid volume at 70 degree celcius in m^3/kg
V_f = m*VG_2;;// in m^3/s
printf( 'The volumetric flow rate of initial air-water mixture is %3.2f m^3/s',V_f)

