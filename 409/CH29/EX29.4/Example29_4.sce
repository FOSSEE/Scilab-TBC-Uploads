clear ;
clc;
// Example 29.4
printf('Example 29.4\n\n');
//page no. 900
// Solution fig. E29.4

// Given 
c_bl = 8.30 * 10^6 ;// Capacity of blower - [cubic feet/hr]
DBT_A = 80 ;// Initial dry bulb temperature of moist air - [degree F]
DBT_B = 95 ;// Final dry bulb temperature of exit air - [degree F]
WBT_A = 65 ;// Initial wet bulb temperature of moist air - [degree F]
WBT_B = 90 ;// Final wet bulb temperature of exit air - [degree F]
T1_H2O = 120 ;// Initial temperature of water - [degree F]
T2_H2O = 90 ;// Final temperature of water - [degree F]

//A is initial and B is final  point , see fig. E29.4 . Humidity is obtained from humidity chart, according to book the respective humidities are as follows
H_A = 0.0098; // Humidity of air at A - [lb H2O / lb dry air]
H1_A = 69 ;// Humidity of air at A - [grains H2O / lb dry air]
delH_A = 30.05 - 0.12; // Enthalpy of entering air -[Btu/lb dry air]
v_A = 13.82 ;// Specific volume of entering air -[cubic feet/lb dry air]
H_B = 0.0297;// Humidity of air at B - [lb H2O / lb dry air]
H1_B = 208 ;// Humidity of air at B - [grains H2O / lb dry air]
delH_B = 55.93 - 0.10  ;// Enthalpy of exit air -[Btu/lb dry air]
v_B = 14.65 ;// Specific volume of exit air -[cubic feet/lb dry air]
Eq_A = c_bl /v_A ;// Entering dry air equivalent of capacity of blower -[lb dry air]

// Reference temperature for water stream is 32 degree F 
del_H1_H2O = 1*(T1_H2O - 32) ;//Enthalpy of entering water -[Btu/lb H2O]
del_H2_H2O = 1*(T2_H2O - 32) ;//Enthalpy of exit water -[Btu/lb H2O]
tr_H2O = H_B - H_A ;// Transfer of water to air -[lb H2O / lb dry air] 

// Energy balance around the entire process yields W -
W = (delH_B - del_H2_H2O*tr_H2O - delH_A)/(del_H1_H2O - del_H2_H2O) ;// Water entering tower - [lb H2O/lb dry air]
W1 = W - tr_H2O ;// Water leaving tower -[lb H2O/lb dry air]
Total_W1 = W1* Eq_A ;// Total water leaving tower -[lb/hr]

printf('Amount of water cooled per hour is %.2e lb/hr .\n',Total_W1);