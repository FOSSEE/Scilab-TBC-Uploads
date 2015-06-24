clc;clear;
//Example in 10.6

//given data
m1=1.00814;//mass of proton in a.m.u
m2=1.00893;//mass of neutron in a.m.u
m3=7.01822;//mass of lithium in a.m.u

//calculations
dm=(3*m1)+(4*m2)-m3;
Q=dm*931;
disp(Q,'Binding energy in MeV')