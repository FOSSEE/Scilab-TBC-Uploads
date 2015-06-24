clear ;
clc;
disp('Example 1.1');



// Given values
P = 700;   //pressure,[kN/m^2]
V1 = .28;   //initial volume,[m^3]
V2 = 1.68;   //final volume,[m^3]

//solution

W = P*(V2-V1);// // Formula for work done at constant pressure is, [kJ]
mprintf('\n The Work done is = %f MJ\n',W*10^-3);

//End
