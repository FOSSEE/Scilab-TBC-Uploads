clear;
clc;
disp('Example 4.21');

//  aim : To determine the 
//  (a) volume occupied by steam
//  (b)(1) final dryness fraction of steam
//       (2) Change of internal energy during expansion

//  (a)
//  Given values
P1 = .85;//  [mN/m^2]
x1 = .97;

//  solution
//  from steam table, at .85 MN/m^2,
vg1 = .2268;//  [m^3/kg]
//  hence
v1 = x1*vg1;//  [m^3/kg]
mprintf('\n (a) The volume occupied by 1 kg of steam is  =  %f m^3/kg\n',v1);

// (b)(1)
P2 = .17;//  [MN/m^2]
// since process is polytropic process with
n = 1.13; //  polytropic index
// hence
v2 = v1*(P1/P2)^(1/n);// [m^3/kg]

// from steam table at .17 MN/m^2
vg2 = 1.031;// [m^3/kg]
// steam is wet so
x2 = v2/vg2;//  final dryness fraction
mprintf('\n (b)(1) The final dryness fraction of the steam is  =  %f \n',x2);

//  (2)
W = (P1*v1-P2*v2)*10^3/(n-1);// [kJ/kg]
//  since process is adiabatic, so
del_u = -W;// [kJ/kg]
mprintf('\n     (2) The change in internal energy of the steam during expansion is  =  %f kJ/kg  (This is a loss of internal energy)\n',del_u);
// There are minor variation in the answer

//  End
