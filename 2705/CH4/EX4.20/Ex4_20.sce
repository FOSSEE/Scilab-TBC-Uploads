clear;
clc;
disp('Example 4.20');

//  aim : To determine the
//  (a) mass of steam 
//  (b) work transfer
//  (c) change of internal energy
//  (d) heat exchange b/w the steam and surroundings

//  Given values
P1 = 2.1;//  initial pressure,[MN/m^2]
x1 = .9;//  dryness fraction
V1 = .427;//  initial volume,[m^3]
P2 = .7;//  final pressure,[MN/m^2]
//  Given process is polytropic with
n = 1.25; // polytropic index

//  solution
//  from steam table

//  at 2.1 MN/m^2
hf1 = 920.0;//  [kJ/kg]
hfg1=1878.2;//  [kJ/kg]
hg1=2798.2;//  [kJ/kg]
vg1 = .0949;//  [m^3/kg]

//  and at .7 MN/m^2
hf2 = 697.1;//  [kJ/kg]
hfg2 = 2064.9;//  [kJ/kg]
hg2 = 2762.0;// [kJ/kg]
vg2 = .273;//  [m^3/kg]

//  (a)
v1 = x1*vg1;//  [m^3/kg]
m = V1/v1;//  [kg]
mprintf('\n (a) The mass of steam present is  =  %f kg\n',m);

//  (b)
//  for polytropic process
v2 = v1*(P1/P2)^(1/n);//  [m^3/kg]

x2 = v2/vg2;//  final dryness fraction
//  work transfer
W = m*(P1*v1-P2*v2)*10^3/(n-1);//  [kJ]
mprintf('\n (b) The work transfer is  =  %f  kJ\n',W);

//  (c)
//  initial
h1 = hf1+x1*hfg1;//  [kJ/kg]
u1 = h1-P1*v1*10^3;//  [kJ/kg]

//  final
h2 = hf2+x2*hfg2;//  [kJ/kg]
u2 = h2-P2*v2*10^3;//  [kJ/kg]

del_U = m*(u2-u1);//  [kJ]
mprintf('\n (c) The change in internal energy is  =  %f kJ',del_U);
if(del_U<0)
    disp('since del_U<0,so this is loss of internal energy')
else
    disp('since del_U>0,so this is gain in internal energy')
end

//  (d)
Q = del_U+W;//  [kJ]
mprintf('\n (d) The heat exchange between the steam and surrounding is  =  %f  kJ',Q);
if(Q<0)
    disp('since Q<0,so this is loss of heat energy to surrounding')
else
    disp('since Q>0,so this is gain in heat energy to the steam')
end

// there are minor vairations in the values reported in the book

//  End
