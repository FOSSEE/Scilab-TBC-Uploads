//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 11


clear;
clc;


//Given:
Ha = -509.93; //heat of combustion of reaction a (kJ) 
Hb = -296.03; //heat of combustion of reaction b (kJ)
Hc = -393.78; //heat of combustion of reaction c (kJ)
Hd = -167.57; //heat of combustion of reaction d (kJ)

//To calculate heat of formation of chloroform
//c + (3*d) -a -b gives chloroform from its elements
Hf = Hc+(3*Hd)-Ha-Hb;
mprintf('Heat of formation of chloroform is %f kJ/mol',Hf);

//end