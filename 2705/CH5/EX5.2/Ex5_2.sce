clear;
clc;
disp('Example 5.2');

//  aim : To determine 
//  the new volume

//  Given values
P1 = 300;//  original pressure,[kN/m^2]
V1 = .14;//  original volume,[m^3]

P2 = 60;//  new pressure after expansion,[kn/m^2]

//  solution
//  since temperature is constant so using boyle's law P*V=constant
V2 = V1*P1/P2;//  [m^3]

mprintf('\n The new volume after expansion is  =  %f  m^3\n',V2);

//  End
