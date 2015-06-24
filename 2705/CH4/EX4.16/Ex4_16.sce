clear;
clc;
disp('Example 4.16');

//  aim : To determine 
//  the minimum dryness fraction of steam

//  Given values
P1 = 1.8;//  testing pressure,[MN/m^2]
P2 = .11;//  pressure after throttling,[MN/m^2]

//  solution
//  from steam table
//  at .11 MN/m^2 steam is completely dry and specific enthalpy is
hg = 2680;//  [kJ/kg]

//  before throttling steam is wet, so specific enthalpy is=hf+x*hfg, where x is dryness fraction
//  from steam table
hf = 885;//  [kJ/kg]
hfg = 1912;//  [kJ/kg]

//  now for throttling process,specific enthalpy will same before and after
//  hence
x = (hg-hf)/hfg;
mprintf('\n The minimum dryness fraction of steam is x  =  %f \n',x);

//  End

