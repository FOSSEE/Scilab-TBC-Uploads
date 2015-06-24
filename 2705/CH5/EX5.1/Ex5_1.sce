clear;
clc;
disp('Example 5.1');

//  aim : To determine 
//  new pressure exerted on the air and the difference in two mercury column level

//  Given values
P1 = 765;//  atmospheric pressure, [mmHg]
V1 = 20000;//  [mm^3]
V2 = 17000;//  [mm^3]

//  solution

//  using boyle's law P*V=constant
//  hence
P2 = P1*V1/V2;//  [mmHg]
mprintf('\n The new pressure exerted on the air is  =  %f  mmHg \n',P2);

del_h = P2-P1;//  difference in Height of mercury column level
mprintf('\n The difference in the two mercury column level is  =  %f  mm\n',del_h);

//  End
