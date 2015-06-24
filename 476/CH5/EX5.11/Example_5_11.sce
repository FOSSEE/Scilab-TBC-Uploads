//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 11


clear;
clc;


//Given:
T2 = 266;
T1 = 300; //operating temperatures of vapour compression refrigeration cycle(K)

//To determine COP at given conditions
//(a)
Ha = 656; //(kJ/kg)
Hb = 724; //(kJ/kg)
Hd = 144; //(kJ/kg)
Hc = Hd;
//Using eq. 5.61 (Page no. 139)
COP = (Ha-Hd)/(Hb-Ha);
mprintf('(a). COP = %f',COP);

//(b)
Ha = 652; //(kJ/kg)
Hb = 758; //(kJ/kg)
Hd = 159; //(kJ/kg)
Hc = Hd;
eff = 0.75; //efficiency of compressor
COP = (Ha-Hd)/((Hb-Ha)*(1/eff));
mprintf('\n\n (b). COP = %f',COP);

//(c). Ideal Carnot refrigerator
COP = T2/(T1-T2);
mprintf('\n\n (c). COP = %f',COP);

//end