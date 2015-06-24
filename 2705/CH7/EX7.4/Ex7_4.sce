clear;
clc;
disp('Example 7.4');

//  aim : To determine
//  the dryness fraction of steam

//  Given values
P1 = 2;//  initial pressure, [MN/m^2]
t = 350;//  temperature, [C]
P2 = .28;//  final pressure, [MN/m^2]

//  solution
//  at 2 MN/m^2 and 350 C,steam is superheated because the saturation temperature is 212.4 C
//  From steam table
s1 = 6.957;//  [kJ/kg K]

//  for isentropic process
s2 = s1;
//  also
sf2 = 1.647;//  [kJ/kg K]
sfg2 = 5.368;//  [kJ/kg K]

//  using
//  s2 = sf2+x2*sfg2, where x2 is dryness fraction of steam
//  hence
x2 = (s2-sf2)/sfg2;
mprintf('\n The final dryness fraction of steam is x2  =  %f\n',x2);

//  End
