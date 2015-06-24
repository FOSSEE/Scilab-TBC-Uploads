clear;
clc;
disp('Example 4.5');

// aim : To determine 
//  the specific enthalpy 

//  Given values
P = 70; //  pressure, [kn/m^2]
x = .85; //  Dryness fraction

// solution

//  from steam table, at given pressure 
hf = 376.8;//  [kJ/kg]
hfg = 2283.3;//  [kJ/kg]

// now using equation [2]
h = hf+x*hfg;//  specific enthalpy of wet steam,[kJ/kg]

mprintf('\n The specific enthalpy of wet steam is  =  %f kJ/kg \n',h);

// There is minor variation in the book's answer

//  End
