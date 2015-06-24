
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 8

clear ;clc;

//Given data
Q = 100 // rate of energy losses as heat from roof and walls of auditorium in kW per degree celsius
TD = 298.15     // desired temperature to be maintained in K
TW = 273.15     // outside temperature during winter in K
TS = 314.15     // outside temperature during summer in K

// Winter: Device is used as heat pump
TL = TW         // outside temperature
TH = TD         // Desired temperature
QH = Q*(TH-TL)   // total heat loss to surroundings
// COP_HP = QH/W = TH/(TH-TL)
W = QH * (TH-TL)/TH // Power required in kW
mprintf('The power required to operate the device in winter = %5.2f kW', W)

// Summer: Device is used as refrigerator
TL = TD         // Desired temperature
TH = TS         // Outside temperature
QL = Q*(TH-TL)   // Total heat loss to surroundings
// COP_HP = QH/W = TL/(TH-TL)
W = QL * (TH-TL)/TL // Power required in kW
mprintf('\n The power required to operate the device in summer = %5.2f kW', W)


