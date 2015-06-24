clc;clear;
//Example 14.2

//given data
m1=235.044;//mass of 92U235 in a.m.u
m2=97.905;//mass of 42Mo98 in a.m.u
m3=135.917;//mass of 54Xe136 in a.m.u
//rxn = 0n1 + 92U235 = 42Mo98 + 54Xe136 + 4 -1e0 + 2 0n1

//calculation
LHSm=1.009+m1;
RHSm=m2+m3+(4*0.00055)+(2*1.009);
dm=LHSm-RHSm;
disp(dm,'mass defect in a.m.u');
E=dm*931;
disp(E,'energy released in MeV')