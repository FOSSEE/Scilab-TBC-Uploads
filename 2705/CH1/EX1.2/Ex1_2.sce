clear;
clc;
disp('Example 1.2');



//Given values
P1 = 138;  // initial pressure,[kN/m^2]
V1 = .112;  //initial volume,[m^3]
P2 = 690; //  final pressure,[kN/m^2]
Gama=1.4; //  heat capacity ratio

//  solution

//  since gas is following, PV^1.4=constant,hence

V2 =V1*(P1/P2)^(1/Gama); //   final volume, [m^3] 

mprintf('\n The new volume of the gas is = %f m^3\n',V2)

//End
