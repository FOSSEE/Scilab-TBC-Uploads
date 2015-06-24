clc;clear;
//Example 10.4

//given data
mn=1.00893;//mass of neutron in a.m.u
mp=1.00813;//mass of proton in a.m.u
md=2.01473;//mass of deuteron in a.m.u
ma=4.00389;//mass of alpha-particle in a.m.u

//calculations
dm=md-(mn+mp);
disp((-dm*931),'binding energy in MeV');
dm=ma-2*(mn+mp);
disp((-dm*931),'binding energy in MeV')