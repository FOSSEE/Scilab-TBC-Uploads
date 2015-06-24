clear;
clc;
disp('Example 4.3');

//  aim : To determine
//  the specific enthalpy

//  given values
P = 2; //  pressure ,[MN/m^2]
t = 250; //  Temperature, [C]
cp = 2.0934; //  average value of specific heat capacity, [kJ/kg K]

//  solution

//  looking up steam table it shows that at given pressure saturation temperature is 212.4 C,so
tf = 212.4; //  [C]
//  hence,
Degree_of_superheat = t-tf;//  [C]
//  from table at given temperature 250 C
h = 2902; //  specific enthalpy of steam at 250 C ,[kJ/kg]
mprintf('\nThe specific enthalpy of steam at 2 MN/m^2 with temperature 250 C is  =  %f  kJ/kg \n',h);

//  Also from steam table enthalpy at saturation temperature is
hf = 2797.2 ;//  [kJ/kg]
//  so enthalpy at given temperature is
h = hf+cp*(t-tf);//  [kJ/kg]

mprintf('\n The specific enthalpy at given T and P by alternative path is  =  %f kJ/kg \n',h);

//  End
