clear;
clc;
disp('Example 1.3');



//  Given values
P1 = 2070;  //  initial pressure,  [kN/m^2]
V1 = .014;  //  initial volume,  [m^3]
P2 = 207;  //  final pressure, [kN/m^2]
n=1.35;  //  polytropic index

//  solution

//  since gas is following PV^n=constant
//  hence 

V2 = V1*(P1/P2)^(1/n);  // final volume,  [m^3]

//  calculation of workdone

W=(P1*V1-P2*V2)/(1.35-1);  // using work done formula for polytropic process, [kJ]

mprintf('\n The Work done by gas during expansion is  =  %f kJ\n',W);

//End
