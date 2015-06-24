clear;
clc;

// Illustration 3.8
// Page: 81
printf('Illustration 3.8 - Page: 81\n\n');
printf('Illustration 3.8 (a)\n\n');

// Solution (a)

//***Data****//
// a = water b = air
Nb = 0;
h = 1100;// [W/square m]
//*****//

Ma = 18.02;// [kg/kmol]
Cpa = 2090;// [J/kg.K]
T1 = 600;// [C]
Ti = 260;// [C]
// The positive dirn. is taken to be from the bulk gas to the surface.
Has = 2.684*(10^6);// enthapy of saturated steam at 1.2 std atm, rel. to the liquid at 0 C in [J/kg]
Hai = 2.994*(10^6);// enthalpy of steam at 1 std atm, 260 C in [J/kg]

// Radiation contributions to the heat transfer from  the gas to the surface are negligible. Eqn. 3.70 reduces to
Na = -((h/(Ma*Cpa))*log(1-((Cpa*(T1-Ti))/(Has-Hai))));// [kmol/square m.s]
printf('The rate of steam flow reqd. is %f kmol/square m.s\n\n',Na);
// negative sign indicates that the mass flux is into the gas

printf('Illustration 3.8 (b)\n\n');
 
// Solution (b)

//***Data****//
// a  =  water b  =  air
h  =  572;// [W/square m]
T1  =  25;// [C]
//******//

Ti  =  260;// [C]
// The positive dirn. is taken to be from the bulk gas to the surface.
Has  =  1.047*10^(5);// enthapy of saturated steam at 1.2 std atm, rel. to the liquid at 0 C in [J/kg]
Hai  =  2.994*(10^6);// enthalpy of steam at 1 std atm, 260 C in [J/kg]

// Radiation contributions to the heat transfer from  the gas to the surface are negligible. Eqn. 3.70 reduces to
Na  =  -((h/(Ma*Cpa))*log(1-((Cpa*(T1-Ti))/(Has-Hai))));// [kmol/square m.s]
printf('The rate of steam flow reqd. is %f kmol/square m.s',Na);
// negative sign indicates that the mass flux is into 