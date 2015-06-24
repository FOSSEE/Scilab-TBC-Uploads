clear ;
clc;
// Example 29.5
printf('Example 29.5\n\n');
//page no. 902
// Solution fig. E29.5

// Given 
W = 100 ;// Amount of entering water -[lb/hr]
H1 = .020 ;// Humidity of entering air -[lb H2O / lb dry air]
T1 = 155 ;//Temperature of entering air -[degree F]
DTB = 110 ;// Dry bulb temperature of exit air -[degree F]
WTB = 100 ;// Wet bulb temperature of exit air -[degree F]

// Additional data is obtained from humidity chart, it is as follows
H2 = .0405 ;//Humidity of exit air -[lb H2O / lb dry air]

del_H = H2 - H1 ;// Change in humidity betwween two states -[lb H2O / lb dry air]
air_in = (W*1.02)/(del_H * 1)   ;// Amount of wet air entering -[lb]

mol_air = 29 ;// Molecular wt. of air -[lb]
Ref_T = 32 + 460 ;// Reference temperature - [ degree R]
gi_T = 90 + 460; // Given temperature on which calculation is based - [degree R] 
air = (air_in *359*gi_T)/( mol_air*Ref_T) ;// Air consumption of dryer at 90 degree F and 1 atm -[cubic feet]

printf('Air consumption of dryer at 90 degree F and 1 atm  is %.2e cubic feet .\n',air);