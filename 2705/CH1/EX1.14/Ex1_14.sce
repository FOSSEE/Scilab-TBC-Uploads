clear;
clc;
disp('Example 1.14');



//  Given values
P_out = 500; //  output of power station, [MW]
c = 29.5; //  calorific value of coal, [MJ/kg]
r=.28; 

//  solution

//  since P represents only 28 percent of energy available from coal
P_coal = P_out/r; //  [MW]
 
m_coal = P_coal/c; //  Mass of coal used, [kg/s]
m_coal = m_coal*3600; //  [kg/h]

//After one hour
m_coal = m_coal*1*10^-3; //  [tonne]
mprintf('\n Mass of coal burnt by the power station in 1 hour is  =  %f  tonne \n',m_coal);

//  End
