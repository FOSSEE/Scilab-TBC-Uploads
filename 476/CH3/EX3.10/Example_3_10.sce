//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 10


clear;
clc;


//Given:
Ha = -890.94; //standard heat for reaction a (kJ)
Hb = -393.78; //standard heat for reaction b (kJ)
Hc = -286.03; //standard heat for reaction c (kJ)

//To calculate heat of formation of methane gas
//c*2 + b - a gives the formation of methane from elements
Hf = (2*Hc)+Hb-Ha;
mprintf('Heat of formation of methane is %f kJ/mol',Hf);

//end