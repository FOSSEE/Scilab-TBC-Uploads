clear ;
clc;
// Example 23.5
printf('Example 23.5\n\n');
//page no. 695
// Solution 

// Basis : 1 g mol of gas
//Given
T1 = 550 ;// Initial temperature - [degree F]
T2 = 200 ;// Final temperature - [degree F]
CO2 = 9.2/100 ;// Mole fraction 
CO = 1.5/100 ;// Mole fraction 
O2 = 7.3/100 ;// Mole fraction 
N2 = 82.0/100 ;//Mole fraction 

// Additional data needed  :
// Coefficients in the heat capacity equations  
a_N2 = 6.895;// constant
b_N2 = 0.7624*10^-3;// coefficient of T
c_N2 = -0.7009*10^-7;// coefficient of square T
a_O2 = 7.104 ;// constant
b_O2 = (0.7851*10^-3);// coefficient of T
c_O2 = (-0.5528*10^-7); // coefficient of square T
a_CO2 = 8.448;// constant
b_CO2 = 5.757*10^-3;// coefficient of T
c_CO2 = -21.59*10^-7;// coefficient of square T
d_CO2 = 3.059*10^-10;// coefficient of cubic T
a_CO = 6.865 ;// constant
b_CO = 0.8024*10^-3;// coefficient of T
c_CO = -0.7367*10^-7; // coefficient of square T

// New coefficients after multiplying mole fraction of each component
a1_N2 = 6.895*N2 ;// constant
b1_N2 = N2*0.7624*10^-3; // coefficient of T
c1_N2 = (-0.7009*10^-7)*N2; // coefficient of square T 
a1_O2 = 7.104*O2 ;// constant
b1_O2 = (0.7851*10^-3)*O2;// coefficient of T
c1_O2 = (-0.5528*10^-7)*O2; // coefficient of square T
a1_CO2 = 8.448*CO2;// constant
b1_CO2 = (5.757*10^-3)*CO2;// coefficient of T
c1_CO2 = (-21.59*10^-7)*CO2; // coefficient of square T
d1_CO2 = (3.059*10^-10)*CO2; // coefficient of cubic T
a1_CO = 6.865*CO;// constant
b1_CO = (0.8024*10^-3)*CO;// coefficient of T
c1_CO = (-0.7367*10^-7)*CO; // coefficient of square T

// Get net coefficients of T , square T and cubic T by adding them
a_net = a1_N2+a1_CO2+a1_CO+a1_O2; //Net constant
b_net = b1_N2+b1_CO2+b1_CO+b1_O2; //Net coefficient of T
c_net = c1_N2+c1_CO2+c1_CO+c1_O2 ;//Net coefficient of square T
d_net = d1_CO2;//Net coefficient of cubic T

//Cp_net = a_net + b_net*T + c_net*T^2 + d_net*T^3
// Integrate Cp_net*dT over given temperature range to get change in enthalpy
del_H = integrate('(a_net )+( b_net*T) + (c_net*(T^2)) + (d_net*(T^3))','T',T1,T2); // Change in enthalpy of gas over given range-[Btu/lb mol gas]

printf('\n Change in enthalpy of gas over given range is %.0f Btu/lb mol gas .\n ',del_H);