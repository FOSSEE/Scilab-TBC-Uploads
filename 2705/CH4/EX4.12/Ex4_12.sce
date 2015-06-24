clear;
clc;
disp('Example 4.12');

//  aim : To determine 
//  the dryness fraction of steam after throttling

//  given values
P1 = 1.4;//  pressure before throttling, [MN/m^2]
x1 = .7;//  dryness fraction before throttling
P2 = .11;//  pressure after throttling, [MN/m^2]

//  solution
//  from steam table
hf1 = 830.1;//  [kJ/kg]
hfg1 = 1957.7;//  [kJ/kg]
h1 = hf1 + x1*hfg1; //  [kJ/kg]

hf2 = 428.8;//  [kJ/kg]
hfg2 = 2250.8;//  [kJ/kg]

//  now for throttling,
//  hf1+x1*hfg1=hf2+x2*hfg2; where x2 is dryness fraction after throttling

x2=(h1-hf2)/hfg2; // final dryness fraction

mprintf('\n Dryness fraction of steam after throttling is  =  %f \n',x2);

//  End
