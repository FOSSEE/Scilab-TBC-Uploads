clear;
clc;
disp('Example 1.10');



//  Given values
m_dot = 3.045; //  use of coal, [tonne/h]
c = 28; // calorific value of the coal, [MJ/kg]
P_out = 4.1; //  output of turbine, [MW]

//  solution
m_dot = m_dot*10^3/3600; // [kg/s]

P_in = m_dot*c; //  power input by coal, [MW]

n = P_out/P_in; //  thermal efficiency formula

mprintf('\n Thermal efficiency of the plant is  =  %f \n',n);

//End
