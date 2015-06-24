clear;
clc;

// Example: 7.7
// Page: 274

printf("Example: 7.7 - Page: 274\n\n");

// Solution

//*****Data******//
T_steam1 = 50;// [OC]
T_steam2 = 30;// [OC]
msteam_dot = 10;// [kg/min]
T_water1 = 15;// [OC]
T_water2 = 25;// [OC]
//***************//

// Solution (a)
// From the Stem Table:
H1 = 2645.9;// [kJ/kg, At 50 OC]
H2 = 768.2;// [kJ/kg, At 30 OC]
H3 = 62.982;// [kJ/kg, At 15 OC]
H4 = 104.83;// [kJ/kg, At 25 OC]
// The mass & Energy balance of the above flow gives:
mwater_dot = msteam_dot*(H1 - H2)/(H4 - H3);// [kg/min]
printf("The mass flow rate of water is %.2f kg/min\n",mwater_dot);

// Solution (b)
Qdot = mwater_dot*(H4 - H3);// [kJ/min]
printf("The rate of heat transfer is %.2f kJ/min",Qdot);