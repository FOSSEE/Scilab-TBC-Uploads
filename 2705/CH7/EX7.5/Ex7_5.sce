clear;
clc;
disp('Example 7.5');

//  aim : To determine
//  the  final condition of steam...
//  the change in specific entropy during hyperbolic process

//  Given values
P1 = 2;//  pressure, [MN/m^2]
t = 250;//  temperature, [C]
P2 = .36;//  pressure, [MN/m^2]
P3 = .06;//  pressure, [MN/m^2]

//  solution

//  (a)
//  from steam table
s1 = 6.545;//  [kJ/kg K]
//  at .36 MN/m^2
sg = 6.930;//  [kJ/kg*K]

sf2 = 1.738;//  [kJ/kg K]
sfg2 = 5.192;//  [kJ/kg K]
vg2 = .510;//  [m^3]

//  so after isentropic expansion, steam is wet
//  hence, s2=sf2+x2*sfg2, where x2 is dryness fraction
//  also
s2 = s1;
//  so
x2 = (s2-sf2)/sfg2;
//  and
v2 = x2*vg2;//  [m^3]

//  for  hyperbolic process
//  P2*v2=P3*v3
//  hence
v3 = P2*v2/P3;//  [m^3]
	
mprintf('\n (a) From steam table at .06 MN/m^2 steam is superheated and has temperature of 100 C with specific volume is  =  %f  m^3/kg\n',v3);

//  (b)
//  at this condition
s3 = 7.609;//  [kJ/kg*K]
//  hence
change_s23 = s3-sg;//  change in specific entropy during the hyperblic process[kJ/kg*K]
mprintf('\n (b) The change in specific entropy during the hyperbolic process is  =  %f kJ/kg K\n',change_s23);

// In the book they have taken sg instead of s2 for part (b), so answer is not matching

//  End

