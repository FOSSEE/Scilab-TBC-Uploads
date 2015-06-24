clear;
clc;
disp('Example 1.4');



//  Given values
P1 = 100;  //  initial pressure, [kN/m^2]
V1 = .056;  //  initial volume,  [m^3]
V2 = .007;  //  final volume,  [m^3]

//  To know  P2
//  since process is hyperbolic so, PV=constant
//  hence

P2 = P1*V1/V2;  //  final pressure, [kN/m^2]

mprintf('\n  The final pressure is  =  %f  kN/m^2\n',P2);

// calculation of workdone

W = P1*V1*log(V2/V1); //  formula for work done in this process, [kJ]

mprintf('\n  Work done on the gas is  =  %f  kJ\n',W);

//End
