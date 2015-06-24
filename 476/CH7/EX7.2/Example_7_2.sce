//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 2


clear;
clc;


//Given:
V = 0.1; //volume of mixture required (m^3)
Ve = 0.03; //volume of alcohol
Vw = 0.07; //volume of water
de = 789; //density of ethanol (kg/m^3)
dw = 997; //density of water (kg/m^3)
pe = 53.6*10^-6; //partial molar volume of ethanol (m^3/mol)
pw = 18*10^-6; //partial molar volume of water (m^3/mol)
Me = 46; //molecular wt of ethanol
Mw = 18; //molecular wt of water

//To find the volume of mixture
ne = (Ve*de*10^3)/Me; //number of moles of ethanol
nw = (Vw*dw*10^3)/Mw; //number of moles of water
xe = ne/(ne+nw); //mole fraction of ethanol
xw = 1-ne; //mole fraction of water
act_V = (ne*pe)+(nw*pw);
if (V==act_V) 
    then mprintf ('It is possible to prepare the required solution');
else
    Ve_act = (Ve/act_V)*V;
    Vw_act = (Vw/act_V)*V;
    mprintf('\n For the given volumes of ethanol and water, it is not possible to prepare 0.1 cubic m of mixture');
    mprintf('\n Required volume of ethanol is %f cubic m',Ve_act);
    mprintf('\n Required volume of water is %f cubic m',Vw_act);
end

//end