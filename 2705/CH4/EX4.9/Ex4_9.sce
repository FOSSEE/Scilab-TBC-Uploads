clear;
clc;
disp('Example 4.9');

//  aim : To determine
//  the specific volume 

//  Given values
t = 325; //  temperature, [C]
P = 2; //  pressure, [MN/m^2]

//  solution
// from steam table at given t and P
vf = .1321; //  [m^3/kg]
tf = 212.4; //  saturation temperature, [C]

mprintf('\n The specific volume of steam at pressure of 2 MN/m^2 and with temperature 325 C is  =  %f  m^3/kg \n',vf);
doh= t-tf; //  degree of superheat, [C]
mprintf('\n The degree of superheat is  =  %f C\n',doh);

// End 
