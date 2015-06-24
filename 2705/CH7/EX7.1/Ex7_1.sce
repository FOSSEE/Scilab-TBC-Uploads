clear;
clc;
disp('Example 7.1');

//  aim : To determine
//  the specific enthalpy of water

//  Given values
Tf = 273+100;//  Temperature,[K]

//  solution
//  from steam table
cpl = 4.187;// [kJ/kg K]
//  using equation [8]
sf = cpl*log(Tf/273.16);//  [kJ/kg*K]
mprintf('\n The specific entropy of water is  =  %f kJ/kg K\n',sf);

//  using steam table
sf = 1.307;//  [kJ/kg K]
mprintf('\n From table The accurate value of sf in this case is  =  %f  kJ/kg K\n',sf);

// There is small error in book's final value of sf


//  End
