//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 18


clear;
clc;


//Given:
//Referring Fig. 5.15 (Page no. 151)
Hc = 516; //enthalpy of high pressure gas at 120 bar and 306 K (kJ/kg)
Ha = 526; //enthalpy of low pressure gas at 2 bar and 292 K (kJ/kg)
Hf = 121; //entalpy of saturated liquid at 2 bar (kJ/kg)
Hg = 314; //enthalpy of saturated vapour at 2 bar (kJ/kg)

//To determine the fraction of air liquified and temperature of air

//(a)..
//Using equation 5.73 (Page no. 152)
x = (Hc-Ha)/(Hf-Ha); //fraction of air liquified
mprintf('(a). The fraction of liquified air is %f',x);

//(b)..
//Taking enthalpy balance around heat exchanger
Hd = Hc - (1-x)*(Ha-Hg);
//At enthalpy of Hd kJ/kg, from T-S diagram for air
T = 167; //temperature in K
mprintf('\n (b). Temperature of air on high pressure side of throttle valve is %i K',T);

//end