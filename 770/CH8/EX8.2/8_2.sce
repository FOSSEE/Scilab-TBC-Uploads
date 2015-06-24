clear;
clc;

//Example - 8.2
//Page number - 288
printf("Example - 8.2 and Page number - 288\n\n");

//Given
T_max = 700+273.15;//[K] - Maximum temperature.
P_boiler = 10*10^(6);//[Pa] - Constant pressure in the boiler
P_condenser = 10*10^(3);//[Pa] - Constant pressure in the condenser

//At state 2 i.e, at 700 C and 10 MPa,it has been reported in the book that from steam table
S_2 = 7.1687;//[kJ/kg-K] - Entropy
H_2 = 3870.5;//[kJ/kg] - Enthalpy

//At state 3 i.e, at 700 C and 10 KPa,
S_3 = S_2;//[kJ/kg-K]- Entropy 

//For sturated steam at 10 kPa, it has been reported in the book that from steam table
S_liq = 0.6493;//[kJ/kg-K]- Entropy of saturated liquid
S_vap = 8.1502;//[kJ/kg-K] - Enthalpy of saturated liquid
//Therefore steam is saturated and its dryness factor can be calculated as
x = (S_2 - S_liq)/(S_vap - S_liq);

//The enthalpy at state 3 is now calculated. For steam at 10 kPa,it has been reported in the book that from steam table
H_liq = 191.83;//[kJ/kg]
H_vap = 2584.7;//[kJ/kg]
//Therefore enthalpy at state 3 is
H_3 = H_liq*(1-x) + H_vap*x;//[kJ/kg]

//Work done by the turbine 
W_tur = -(H_3 - H_2);//[kJ/kg]

//Now we have to calculate work input to the pump
//State 4:Saturated liquid at 10 kPa
//State 4:Compressed liquid at 10 MPa
//Since volume of liquid does not get affected by pressure we take volume of saturated liquid at 10 kPa,
V_liq = 0.001010;//[m^(3)/kg]

//Work transfer in the pump is
W_pump = -V_liq*(P_boiler - P_condenser)*10^(-3);//[kJ/kg]

//Energy balance around pump gives, W_pump = -delta_H =  -(H_1 - H_4)
H_4 = H_liq;// Enthalpy at state 4 (saturated liquid at 10 kPa)
H_1 = H_4 - W_pump;//[kJ/kg]
 
//Heat supplied to boiler is
q_H = H_2 - H_1;//[kJ/kg]

//Efficiency can now be calculated as
//n = (Net work done/Heat input)
n_rankine = (W_tur + W_pump)/q_H;

printf("The efficiency of the Rankine cycle is found to be %f",n_rankine);

//Now let us determine the efficiency of Carnot cycle. The maximun temperature is 700 C and minimum temperature is that of saturated steam at 10 kPa,
T_min = 45.81 + 273.15;//[K] - From steam table as reported in the book
n_carnot = 1-(T_min/T_max);
//Note that the efficiency of Rankine cycle is less than that of carnot cycle.








